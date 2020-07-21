import json
import os
import re
import requests as req
from requests.auth import HTTPBasicAuth
from sumologic import SumoLogic
import sys

"""
    Refer to Terraform Sumo Logic documentation for a list of supported arguments
    https://www.terraform.io/docs/providers/sumologic
    Sumo Logic API documentation: https://help.sumologic.com/APIs
"""
def create_resource_type_mappings() -> dict:
    """
    Creates a dictionary that includes information specific to Terraform and the Sumo Logic api 
    :return: Dictionary of dictionaries that contains resource mappings for each supported resource
    """
    resource_mappings = {}

    with open('resource-mappings.json') as r:
        resource_mappings = json.load(r)

    return resource_mappings

def sumo_login() -> tuple:
    """
    Uses SUMOLOGIC_ACCESSID and SUMOLOGIC_ACCESSKEY environment variables to get Sumo Logic credentials
    :return: A tuple with the Sumo Logic access ID and key
    """
    try:
        access_id = os.environ['SUMOLOGIC_ACCESSID']
        access_key = os.environ['SUMOLOGIC_ACCESSKEY']
        return access_id, access_key
    except KeyError:
        print('Credentials for Sumo not set in environment.')
        sys.exit(1)

def get_sources(versioned_endpoint: str, source_type: str, resource_mapping: dict, credentials: tuple) -> dict:
    """
    Gets a list of all the sources of a given source type
    :param versioned_endpoint: Versioned endpoint to use for api calls
    :source_type: filter for sources, e.g. HTTP
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information for sources
    :return: dictionary of sources of type source_type
    """

    result = []

    access_id = credentials[0]
    access_key = credentials[1]

    # defined in config file but don't want to pass around entire resource_mappings dictionary
    collectors_url = '/collectors/'
    collectors = req.get(f'{versioned_endpoint}{collectors_url}',
                            params={'filter': 'hosted'},
                            auth=HTTPBasicAuth(access_id, access_key))

    if collectors.status_code != 200:
        print ("Could not get a list of sources")
        return None

    collectors = collectors.json()['collectors']
    for collector in collectors:
        if collector.get('id'):
            sources = req.get(f'{versioned_endpoint}{collectors_url}{collector["id"]}/sources',
                                auth=HTTPBasicAuth(access_id, access_key))
            if sources.status_code != 200:
                print (f'Could not retrieve source with collector id {collector["id"]}')
                continue
            for source in sources.json()[resource_mapping['data_key']]:
                if source['sourceType'] == source_type:
                    result.append(source)

    # Hacky solution to deal with generate_tf_config function expecting a data_key to access api response
    return {'sources': result}

def get_sumo_resources(resource_type: str, resource_mapping: dict, credentials: tuple) -> list:
    """
    Makes request for resources from Sumo Logic API
    :param resource_type: Sumo Logic resource type
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :return: list of Sumo Logic resources data
    """
    valid_resource_types = ["collectors", "sources", "roles", "users"]

    if resource_type not in valid_resource_types:
        print ("Not a valid resource type. Options: collectors, sources, roles, users")
        return None

    access_id = credentials[0]
    access_key = credentials[1]

    sumo_logic = SumoLogic(access_id, access_key)

    versioned_endpoint = sumo_logic.get_versioned_endpoint(sumo_logic.DEFAULT_VERSION)

    if resource_mapping.get('url'):
        response = req.get(f'{versioned_endpoint}{resource_mapping["url"]}',
                        params={'filter': resource_mapping.get("filter")},
                        auth=HTTPBasicAuth(access_id, access_key))
        if response.status_code != 200:
            print ("Status code not equal to 200. Check that your Sumo Logic credentials are set")
            return None
        return response.json()

    # There is no url field, so need to get sources
    else:
        return get_sources(versioned_endpoint, resource_mapping['source_type'], resource_mapping, credentials)

def replace_invalid_chars(resource_name: str) -> str:
    """
    Function formats resource names from Sumo Logic as valid resource names for Terraform by placing a underscore
    before a string starting with a digit and replacing all periods with underscores.
    :param resource_name: Resource in Sumo Logic
    :return: String with invalid characters removed
    """
    if resource_name[0].isdigit():
        resource_name = f'_{resource_name}'
    return re.sub("[^-A-Za-z0-9_]", '_', resource_name)

def generate_tf_config(resource_type: str, resource_mapping: dict, credentials: tuple) -> list:
    """
    Function takes in a resource type and its corresponding resource type mappings dictionary
    and generates a Terraform config file.
    :param resource_type: Sumo Logic resource type
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :return: list of valid resource names
    """
    data = get_sumo_resources(resource_type, resource_mapping, credentials)
    if not data:
        return None

    resources = data[resource_mapping['data_key']]

    with open('existing-resources.tf', 'w') as tf:
        for resource in resources:
            name = resource.get('name')
            # users does not have a name field
            if resource_type == "users":
                name = f'{resource["firstName"]}_{resource["lastName"]}'
            valid_resource_name = replace_invalid_chars(name)
            print (f'{valid_resource_name}')
            tf.write(f'resource "{resource_mapping["tf_name"]}" "{valid_resource_name}" {{\n')
            for arg in resource_mapping['tf_supported']:
                key, val = '', ''
                if arg in resource:
                    key, val = arg, resource[arg]
                # convert from resource_type naming to Terraform naming
                if arg in resource_mapping['api_to_tf']:
                    key = resource_mapping['api_to_tf'][arg]
                if key:
                    tf.write(f"""    {key} = "{val}"\n""")
            tf.write(f'}}\n\n')

if __name__ == "__main__":
    if len(sys.argv[1:]) != 1:
        print ("Incorrect number of arguments. \nUsage:\n python create-tf-config-file.py [resource type]")
    else:
        resource_type = sys.argv[1]
        credentials = sumo_login()
        resource_mappings = create_resource_type_mappings()
        generate_tf_config(resource_type, resource_mappings[resource_type], credentials)