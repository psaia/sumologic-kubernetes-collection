#!/bin/bash

# Can only import one resource type for each run of this script

if [ -z "$1" ] || [ -z "$2" ] ; then
    echo "Usage: $0 <file with output from create-tf-config-file.py> <resource type>";
    echo "Resource type options: sumologic_collector, sumologic_http_source, sumologic_role, sumologic_user";
    exit 1;
fi

filename=$1 # a file containing the output of the create-tf-config-file.py script
resource_type=$2 # name of resource type in terraform, e.g. sumologic_collector

# delete the first line in the file if it's the Sumo Logic api url
first_line=$(head -n 1 $filename)
if [[ "$first_line" =~ "SDK Endpoint" ]]; then
    sed '1d' $filename > tmpfile; mv tmpfile $filename
fi

terraform init --backend=false

n=1
while read line; do

# even numbered lines contain the second argument needed for terraform import
if [ $(($n%2)) == 0 ]; then
    second_arg=$line
    terraform import "$resource_type.$resource_name" $second_arg
# odd numbered lines contain the name of the resource in terraform
else
    resource_name=$line
fi
n=$((n+1))
done < $filename
