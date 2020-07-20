import os
import re
import requests as req
from requests.auth import HTTPBasicAuth
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
        'url': 'TODO',
        'data_key': 'collectors'
    }

    # https://help.sumologic.com/APIs/01Collector-Management-API/Source-API
    sources_mapping = {
        'tf_name': 'sumologic_http_source',
        'api_to_tf': {'id': 'collector_id'},
        'tf_supported': ['name', 'description', 'category', 'collector_id'],
        'url': 'TODO',
        'data_key': 'TODO'
    }

    # https://help.sumologic.com/APIs/Role-Management-API
    roles_mapping = {
        'tf_name': 'sumologic_role',
        'api_to_tf': {'filterPredicate': 'filter_predicate'},
        'tf_supported': ['name', 'description', 'capabilities', 'filterPredicate'],
        'url': 'TODO',
        'data_key': 'TODO'
    }

    resource_mappings['collectors'] = collectors_mapping
    resource_mappings['sources'] = sources_mapping
    resource_mappings['roles'] = roles_mapping

    return resource_mappings

def get_sumo_resources(api: str) -> dict:
    """
    Makes request for resource from Sumo Logic API
    :param api: Sumo Logic API endpoint
    :return: list of dict
    """
    valid_apis = ["collectors", "sources", "roles"]

    if api not in valid_apis:
        print ("Not a valid api endpoint. Options: collectors, sources, roles")
        return None

    return req.get(f'https://api.sumologic.com/api/v1/{api}/',
                   params={'filter': os.getenv('SEARCH_FILTER')},
                   auth=HTTPBasicAuth(os.getenv('SUMOLOGIC_ACCESSID'), os.getenv('SUMOLOGIC_ACCESSKEY'))).json()

def replace_invalid_chars(resource_name: str) -> str:
    """
    Function formats resource names from Sumo Logic as valid resource names for Terraform by placing a underscore
    before a string starting with a digit and replacing all periods with underscores.
    :param resource_name: Resource in Sumo Logic
    :return: valid Terraform resource name
    """
    if resource_name[0].isdigit():
        resource_name = f'_{resource_name}'
    return re.sub("[^-A-Za-z0-9_]", '_', resource_name)

def generate_tf_config(resource_type: str, resource_mapping: dict) -> list:
    """
    Function takes in keyword arguments and generates a Terraform config file.
    :param resource_type: string of resource_type
    :return: list of valid resource names
    """
    data = get_sumo_resources(resource_type)
    if not data:
        return None

    collectors = data[resource_mapping['data_key']]
    tf_resources = []

    with open('existing-resources.tf', 'w') as tf:
        for collector in collectors:
            valid_resource_name = replace_invalid_chars(collector['name'])
            tf_resources.append(valid_resource_name)
            tf.write(f'resource "{resource_mapping["tf_name"]}" "{valid_resource_name}" {{\n')
            for arg in resource_mapping['tf_supported']:
                key, val = '', ''
                if arg in collector:
                    key, val = arg, collector[arg]
                # convert from api naming to Terraform naming
                if arg in resource_mapping['api_to_tf']:
                    key = resource_mapping['api_to_tf'][arg]
                if key:
                    tf.write(f"""    {key} = "{val}"\n""")
            tf.write(f'}}\n\n')
    return tf_resources

if __name__ == "__main__":
    if len(sys.argv[1:]) != 1:
        print ("Incorrect number of arguments. \nUsage:\n python create-tf-config-file.py [resource type]")
    else:
        resource_type = sys.argv[1]
        resource_mappings = create_resource_type_mappings()
        generate_tf_config(resource_type, resource_mappings[resource_type])