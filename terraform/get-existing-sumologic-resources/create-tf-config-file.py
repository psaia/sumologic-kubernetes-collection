import os
import requests as req
import json
import python_terraform as pt
import sumologic as sl
#import textwrap as tw

# Get credentials from environment variables
SUMOLOGIC_ACCESSID=os.getenv('SUMOLOGIC_ACCESSID')
SUMOLOGIC_ACCESSKEY=os.getenv('SUMOLOGIC_ACCESSKEY')
SEARCH_FILTER=os.getenv('SEARCH_FILTER')



def get_resource_list(api):
    # add error message if not 200 ok
    payload = {'filter': SEARCH_FILTER}
    r = req.get(('https://api.sumologic.com/api/v1/%s/' % api), params=payload, auth=(SUMOLOGIC_ACCESSID, SUMOLOGIC_ACCESSKEY))

    #print(r.text)

    #data = r.json()

    #print (data)
    return r.json()

"""
    Refer to Terraform Sumo Logic documentation for a list of supported arguments
    https://www.terraform.io/docs/providers/sumologic
"""
supported_args = ['name', 'description', 'category', 'timeZone']
mapping = {'timeZone': 'timezone'}

def replace_invalid_chars(resource_name):
    valid_resource_name = ""
    # must start with letter or underscore
    first_char = resource_name[0]
    if not first_char.isalpha() and not first_char == "_":
        #print ("replace beginning")
        resource_name = "_" + resource_name
        #print(resource_name)

    # may only contain letters, numbers, underscores, or dashes
    for char in resource_name:
        if not char.isalnum() and not char == "_" and not char == "-":
            #print ("weird char: ", char)
            char = "-"
        valid_resource_name += char
    return valid_resource_name

def generate_config_and_valid_resources_files(api, resource_type, supported_arguments, mapping_from_request_to_tf, data_key):
    data = get_resource_list(api)
    with open('existing-resources.tf', 'w') as ec, open('valid-resources.txt', 'w') as vr:
        #wrapper = tw.TextWrapper()
        for collector in data[data_key]:
            #print ("before: ", collector['name'])
            valid_resource_name = replace_invalid_chars(collector['name'])
            vr.write('%s\n' % valid_resource_name)
            #print ("after: ", collector['name'])
            ec.write('resource \"%s\" \"%s\" {' % (resource_type, valid_resource_name))
            for key, value in collector.items():
                if key in supported_args:
                    if key in mapping:
                        key = mapping[key]
                    ec.write('\n    %s = \"%s\"' % (key, value))
            ec.write('\n}\n\n')

def validate_arguments():
    for arg in sys.argv[1:]:
        print (arg)

if __name__ == "__main__":
    #validate_arguments()
    generate_config_and_valid_resources_files("collectors", "sumologic_collector", supported_args, mapping, "collectors")
    #import_resources_to_tf('existing-resource.tf')
