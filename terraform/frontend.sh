#!/bin/bash
component=$1
environment=$2 
app_Version=$3
dnf install ansible -y 
pip3.9 install botocore boto3 #libraries to connect with AWS 
#using ansible pull archi
ansible-pull -i localhost, -U https://github.com/pallembhavyasri/ansible-roles-tf.git Frontend.yaml -e component=$component -e env=$environment -e appVersion=$app_Version #appVersion is ansible variable


