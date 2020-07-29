import os
import re
import sys
import json

import requests as req
from requests.auth import HTTPBasicAuth
from sumologic import SumoLogic
from typing import TextIO


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
    Makes request for collectors and sources from Sumo Logic API. Collector id is needed to make call to sources api.
    :param versioned_endpoint: Versioned endpoint to use for api calls
    :source_type: filter for sources, e.g. HTTP
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information for sources
    :param credentials: tuple with the Sumo Logic access ID and key
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
                    source['collector_name'] = replace_invalid_chars(collector['name'])
                    source['collector_id'] = collector['id']
                    result.append(source)

    # Hacky solution to deal with generate_tf_config function expecting a data_key to access api response
    return {'sources': result}


def get_sumo_resources(resource_type: str, resource_mapping: dict, credentials: tuple) -> dict:
    """
    Makes request for resources from Sumo Logic API
    :param resource_type: Sumo Logic resource type
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :param credentials: tuple with the Sumo Logic access ID and key
    :return: dictionary of Sumo Logic resources data
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


def get_second_import_arg(resource_type: str, resource: dict) -> str:
    """
    Constructs the second argument for terraform import based on the format expected for the given resource_type.
    :param resource_type: Sumo Logic resource type
    :param resource: a dictionary containing key, value pairs returned from the Sumo Logic api
    :return: The second argument to terraform import for the given resource
    """
    if resource_type == "sources":
        return f'{resource["collector_id"]}/{resource["id"]}'
    else:
        return resource['id']


def get_valid_resource_name(resource_type: str, resource: dict) -> str:
    """
    Creates a unique terraform resource name to use in the config file.
    :param resource_type: Sumo Logic resource type
    :param resource: a dictionary containing key, value pairs returned from the Sumo Logic api
    :return: A valid Terraform resource name
    """
    # users does not have a name field
    if resource_type == "users":
        return f'{replace_invalid_chars(resource["email"][:resource["email"].find("@")])}'
    # sources do not have unique names
    else:
        valid_resource_name = replace_invalid_chars(resource['name'])
        if resource_type == "sources":
            valid_resource_name = f'{resource["collector_name"]}_{valid_resource_name}'
        return valid_resource_name


def write_resource_to_file(resource_type: str, resource: dict, resource_name: str, resource_mapping: dict, fp: TextIO):
    """
    Writes resource to the given file.
    :param resource_type: Sumo Logic resource type
    :param resource: a dictionary containing key, value pairs returned from the Sumo Logic api
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :param fp: File pointer for the file where resource will be written
    :return: None
    """
    fp.write(f'resource "{resource_mapping["tf_name"]}" "{resource_name}" {{\n')
    for arg in resource_mapping['tf_supported']:
        key, val = '', ''
        if arg in resource:
            key, val = arg, resource[arg]
        # convert from resource_type naming to Terraform naming
        if arg in resource_mapping['api_to_tf']:
            key = resource_mapping['api_to_tf'][arg]
        # We need the collector id to be a reference to the collector resource
        if resource_type == "sources" and arg == "collector_id":
            val = f'sumologic_collector.{resource["collector_name"]}.id'
            tf.write(f"""    {key} = {val}\n""")
            continue
        if key:
            # write bool before checking val, otherwise values of false won't be written
            if isinstance(val, bool):
                    fp.write(f"""    {key} = {str(val).lower()}\n""")
            else:
                if val:
                    if isinstance(val, list):
                        if resource_type == "users":
                            val.reverse()
                        fp.write(f"""    {key} = {val}\n""".replace("'", '"'))
                    else:
                        # Encode and decode string to preserve string literals
                        if isinstance(val, str):
                            val = val.encode("unicode_escape").decode("utf-8")
                        fp.write(f"""    {key} = "{val}"\n""")
    if resource_type == "users":
        fp.write(f"""    transfer_to = ""\n""")
    fp.write(f'}}\n\n')


def generate_tf_config(resource_type: str, resource_mapping: dict, credentials: tuple):
    """
    Generates a Terraform config file for the given resource_type and prints arguments needed for terraform import.
    :param resource_type: Sumo Logic resource type
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :param credentials: tuple with the Sumo Logic access ID and key
    :return: None
    """
    data = get_sumo_resources(resource_type, resource_mapping, credentials)
    if not data:
        print ("No data was returned from the Sumo Logic api")
        return None

    resources = data[resource_mapping['data_key']]

    with open(f'{resource_type}-resources.tf', 'w') as tf:
        for resource in resources:
            valid_resource_name = get_valid_resource_name(resource_type, resource)
            second_tf_import_arg = get_second_import_arg(resource_type, resource)

            # needed for Terraform import
            print (f'{valid_resource_name}')
            print (f'{second_tf_import_arg}')

            write_resource_to_file(resource_type, resource, valid_resource_name, resource_mapping, tf)

if __name__ == "__main__":
    if len(sys.argv[1:]) != 1:
        print ("Incorrect number of arguments. \nUsage:\n python create-tf-config-file.py [resource type]")
    else:
        resource_type = sys.argv[1]
        credentials = sumo_login()
        resource_mappings = create_resource_type_mappings()
        generate_tf_config(resource_type, resource_mappings[resource_type], credentials)
