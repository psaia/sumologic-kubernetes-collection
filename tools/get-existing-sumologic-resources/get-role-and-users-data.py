import os
import re
import sys
import json

import requests as req
from requests.auth import HTTPBasicAuth
from sumologic import SumoLogic
from typing import TextIO, Tuple


"""
    Refer to Terraform Sumo Logic documentation for a list of supported arguments
    https://www.terraform.io/docs/providers/sumologic
    Sumo Logic API documentation: https://help.sumologic.com/APIs
"""

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

def get_user_email(versioned_endpoint: str, user_id: str, credentials: tuple, user_ids_to_emails: dict) -> dict:
    """
    Makes request to Sumo Logic api to get user email using the user id
    :param versioned_endpoint: Versioned endpoint to use for api calls
    :param user_id: user id in Sumo Logic
    :param credentials: tuple with the Sumo Logic access ID and key
    :param user_ids_to_emails: dictionary mapping user ids to their corresponding user email
    :return: dictionary mapping user ids to their corresponding user email
    """

    user = req.get(f'{versioned_endpoint}/users/{user_id}',
                    auth=HTTPBasicAuth(credentials[0], credentials[1]))
    if user.status_code != 200:
        print (f'Could not get email for user id {user_id}')
        return None
    user_ids_to_emails[user_id] = user.json()['email']
    return user_ids_to_emails[user_id], user_ids_to_emails

def get_sumo_roles(credentials: tuple) -> Tuple[str, dict]:
    """
    Makes request for roles to Sumo Logic API
    :param credentials: tuple with the Sumo Logic access ID and key
    :return: tuple of versioned_endpoint string and dictionary of Sumo Logic roles data
    """

    access_id = credentials[0]
    access_key = credentials[1]

    sumo_logic = SumoLogic(access_id, access_key)

    versioned_endpoint = sumo_logic.get_versioned_endpoint(sumo_logic.DEFAULT_VERSION)

    response = req.get(f'{versioned_endpoint}/roles/', auth=HTTPBasicAuth(access_id, access_key))
    if response.status_code != 200:
        print ("Status code not equal to 200. Check that your Sumo Logic credentials are set")
        return None
    return versioned_endpoint, response.json()

def write_role_to_file(versioned_endpoint: str, role: dict, fp: TextIO, credentials: tuple, user_ids_to_emails: dict) -> dict:
    """
    Writes role and corresponding member emails to file
    :param versioned_endpoint: Versioned endpoint to use for api calls
    :param role: a dictionary containing key, value pairs returned from the Sumo Logic api
    :param fp: file pointer for the file to write to
    :param credentials: tuple with the Sumo Logic access ID and key
    :param user_ids_to_emails: dictionary mapping user ids to their corresponding user email
    :return: dictionary containing user emails that have already been fetched from the Sumo Logic api
    """

    fp.write(f'\n        {{\n            "name": \"{role["name"]}\",\n            "members": [')

    members = role['users']

    # if there are no members, write closing bracket to the same line
    if not members:
        fp.write(']\n        }')
        return user_ids_to_emails

    for user in members:
        email = user_ids_to_emails.get(user)
        if not email:
            email, user_ids_to_emails = get_user_email(versioned_endpoint, user, credentials, user_ids_to_emails)
            user_ids_to_emails[user] = email
        fp.write(f'\n                \"{email}\"')

        # don't write "," for last email in list
        if user != members[-1]:
            fp.write(",")

    fp.write('\n            ]\n        }')
    return user_ids_to_emails


def create_role_name_to_user_email_file(credentials: tuple):
    """
    Creates a json file that has a list of user emails for users in a given role
    :param credentials: tuple with the Sumo Logic access ID and key
    :return: None
    """
    user_ids_to_emails = {}

    versioned_endpoint, data = get_sumo_roles(credentials)
    if not data:
        print ("No data was returned from the Sumo Logic api")
        return None

    roles = data['data']

    with open('roles-and-users.json', 'w') as tf:
        tf.write(f'{{\n    \"roles\": [')

        for role in roles:
            user_ids_to_emails = write_role_to_file(versioned_endpoint, role, tf, credentials, user_ids_to_emails)

            # don't write "," for last role in list
            if role != roles[-1]:
                tf.write(",")

        tf.write(f'\n    ]\n}}\n')

if __name__ == "__main__":
    credentials = sumo_login()
    create_role_name_to_user_email_file(credentials)
