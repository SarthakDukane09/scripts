#!/bin/bash

<<info

this is an explaination of functions

info

function create_user {

read -p "enter the user name: " username

sudo useradd -m $username

echo "user created successfully"

}

create_user
create_user
create_user

