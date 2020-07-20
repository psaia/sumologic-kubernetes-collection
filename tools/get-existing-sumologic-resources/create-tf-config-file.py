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
def create_resource_type_mappings():
    """
    Creates a dictionary that includes information specific to Terraform and the Sumo Logic api 
    :return: None
    """
    resource_mappings = {}

    # https://help.sumologic.com/APIs/01Collector-Management-API/Collector-API-Methods-and-Examples#response-fields
    collectors_mapping = {
        'tf_name': 'sumologic_collector',
        'api_to_tf': {'timeZone': 'timezone'},
        'tf_supported': ['name', 'description', 'category', 'timeZone', 'fields'],
        'url': '/collectors/',
        'data_key': 'collectors'
    }

    # https://help.sumologic.com/APIs/01Collector-Management-API/Source-API
    # sources url requires having the collector_id
    sources_mapping = {
        'tf_name': 'sumologic_http_source',
        'api_to_tf': {'id': 'collector_id'},
        'tf_supported': ['name', 'description', 'category', 'collector_id'],
        'data_key': 'sources',
        'source_type': 'HTTP'
    }

    # https://help.sumologic.com/APIs/Role-Management-API
    roles_mapping = {
        'tf_name': 'sumologic_role',
        'api_to_tf': {'filterPredicate': 'filter_predicate'},
        'tf_supported': ['name', 'description', 'capabilities', 'filterPredicate'],
        'url': '/roles/',
        'data_key': 'data'
    }

    resource_mappings['collectors'] = collectors_mapping
    resource_mappings['sources'] = sources_mapping
    resource_mappings['roles'] = roles_mapping

    return resource_mappings

def get_sources(versioned_endpoint: str, source_type: str, resource_mapping: dict) -> dict:
    """
    Gets a list of all the sources of a given source type
    :param versioned_endpoint: Versioned endpoint to use for api calls
    :source_type: filter for sources, e.g. HTTP
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information for sources
    :return: dict of sources of type source_type
    """

    sources = []

    collectors_url = '/collectors/'
    collectors = req.get(f'{versioned_endpoint}{collectors_url}',
                            auth=HTTPBasicAuth(access_id, access_key)).json()
    if collectors:
        collectors = collectors['collectors']
        for collector in collectors:
            collector_id = collector['id']
            if collector_id:
                sources = req.get(f'{versioned_endpoint}/{collector_id}/sources',
                                    auth=HTTPBasicAuth(access_id, access_key)).json()
                if sources:
                    sources.append(sources[data_key])
    # Hacky solution to deal with generate_tf_config function expecting a data_key to access api response
    return {'sources': sources}

def get_sumo_resources(resource_type: str, resource_mapping: dict) -> list:
    """
    Makes request for resources from Sumo Logic API
    :param resource_type: Sumo Logic resource type
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :return: list of Sumo Logic resources data
    """
    valid_resource_types = ["collectors", "sources", "roles"]

    if resource_type not in valid_resource_types:
        print ("Not a valid resource_type endpoint. Options: collectors, sources, roles")
        return None

    access_id = os.getenv('SUMOLOGIC_ACCESSID')
    access_key = os.getenv('SUMOLOGIC_ACCESSKEY')

    sumo_logic = SumoLogic(access_id, access_key)

    versioned_endpoint = sumo_logic.get_versioned_endpoint(sumo_logic.DEFAULT_VERSION)

    if resource_mapping.get('url'):
        return req.get(f'{versioned_endpoint}{resource_mapping["url"]}',
                        params={'filter': os.getenv('SEARCH_FILTER')},
                        auth=HTTPBasicAuth(access_id, access_key)).json()

    # There is no url field, so need to get sources
    else:
        return get_sources(versioned_endpoint, resource_mapping['source_type'], resource_mapping)

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

def generate_tf_config(resource_type: str, resource_mapping: dict) -> list:
    """
    Function takes in a resource type and its corresponding resource type mappings dictionary
    and generates a Terraform config file.
    :param resource_type: Sumo Logic resource type
    :param resource_mapping: dictionary containing relevant Terraform and Sumo Logic information
    :return: list of valid resource names
    """
    data = get_sumo_resources(resource_type, resource_mapping)
    if not data:
        return None

    resources = data[resource_mapping['data_key']]

    with open('existing-resources.tf', 'w') as tf:
        for resource in resources:
            valid_resource_name = replace_invalid_chars(resource['name'])
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
        resource_mappings = create_resource_type_mappings()
        generate_tf_config(resource_type, resource_mappings[resource_type])