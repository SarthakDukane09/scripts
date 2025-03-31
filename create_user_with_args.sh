#!/bin/bash

<< help

creating a user using arguments like

./create_userz-with_args.sh shubham test123

help


echo "============== User Creating ============="

sudo useradd -m "$1"

sudo -p passwd "$2"

echo -e "$password\n$password" | sudo passwd "$1" 

echo -e "user name is $1 \n password is $2"


