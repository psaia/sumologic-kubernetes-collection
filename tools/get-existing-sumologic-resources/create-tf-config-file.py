import os
import requests as req
import json
import sumologic as sl
import sys
#import textwrap as tw

"""
    Refer to Terraform Sumo Logic documentation for a list of supported arguments
    https://www.terraform.io/docs/providers/sumologic
    Sumo Logic API documentation: https://help.sumologic.com/APIs
"""
def create_resource_type_mappings():
    resource_mappings = {}

    # https://help.sumologic.com/APIs/01Collector-Management-API/Collector-API-Methods-and-Examples#response-fields
    collectors_mapping = {
        'tf_name': 'sumologic_collector',
        'api_to_tf': {'timeZone': 'timezone'},
        'tf_supported_response_vals': ['name', 'description', 'category', 'timeZone', 'fields'],
        'url': 'TODO',
        'data_key': 'collectors'
    }

    # https://help.sumologic.com/APIs/01Collector-Management-API/Source-API
    sources_mapping = {
        'tf_name': 'sumologic_http_source',
        'api_to_tf': {'id': 'collector_id'},
        'tf_supported_response_vals': ['name', 'description', 'category', 'collector_id'],
        'url': 'TODO',
        'data_key': 'TODO'
    }

    # https://help.sumologic.com/APIs/Role-Management-API
    roles_mapping = {
        'tf_name': 'sumologic_role',
        'api_to_tf': {'filterPredicate': 'filter_predicate'},
        'tf_supported_response_vals': ['name', 'description', 'capabilities', 'filterPredicate'],
        'url': 'TODO',
        'data_key': 'TODO'
    }

    resource_mappings['collectors'] = collectors_mapping
    resource_mappings['sources'] = sources_mapping
    resource_mappings['roles'] = roles_mapping

    return resource_mappings

def get_resource_list(resource_type):
    valid_resource_types = ["collectors", "sources", "roles"]

    if resource_type not in valid_resource_types:
        print ("Not a valid resource type. Options: collectors, sources, roles")
        return -1

    # Get credentials from environment variables
    SUMOLOGIC_ACCESSID=os.getenv('SUMOLOGIC_ACCESSID')
    SUMOLOGIC_ACCESSKEY=os.getenv('SUMOLOGIC_ACCESSKEY')
    SEARCH_FILTER=os.getenv('SEARCH_FILTER')

    payload = {'filter': SEARCH_FILTER}

    # TODO: add error message if not 200 ok
    # TODO: fix url for different resources
    r = req.get(('https://api.sumologic.com/api/v1/%s/' % resource_type), params=payload, auth=(SUMOLOGIC_ACCESSID, SUMOLOGIC_ACCESSKEY))

    return r.json()

def replace_invalid_chars(resource_name):
    valid_resource_name = ""
    # must start with letter or underscore
    first_char = resource_name[0]
    if not first_char.isalpha() and not first_char == "_":
        resource_name = "_" + resource_name

    # may only contain letters, numbers, underscores, or dashes
    for char in resource_name:
        if not char.isalnum() and not char == "_" and not char == "-":
            char = "-"
        valid_resource_name += char
    return valid_resource_name

def generate_config_and_resources_files(resource_type, resource_mapping):
    data = get_resource_list(resource_type)
    if data == -1:
        return

    collectors = data[resource_mapping['data_key']]

    with open('existing-resources.tf', 'w') as ec, open('valid-resources.txt', 'w') as vr:
        #wrapper = tw.TextWrapper()
        for collector in collectors:
            #print ("before: ", collector['name'])
            valid_resource_name = replace_invalid_chars(collector['name'])
            vr.write('%s\n' % valid_resource_name)
            #print ("after: ", collector['name'])
            ec.write('resource \"%s\" \"%s\" {' % (resource_mapping['tf_name'], valid_resource_name))
            for key, value in collector.items():
                if key in resource_mapping['tf_supported_response_vals']:
                    if key in resource_mapping['api_to_tf']:
                        key = resource_mapping['api_to_tf'][key]
                    ec.write('\n    %s = \"%s\"' % (key, value))
            ec.write('\n}\n\n')

if __name__ == "__main__":
    if len(sys.argv[1:]) != 1:
        print ("Incorrect number of arguments. \nUsage:\n python create-tf-config-file.py [resource type]")
    else:
        resource_type = sys.argv[1]
        resource_mappings = create_resource_type_mappings()
        generate_config_and_resources_files(resource_type, resource_mappings[resource_type])