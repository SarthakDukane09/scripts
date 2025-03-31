#!/bin/bash

<< info

this is multi line comment in linux
here we are creating the user using for loop and with the help of function

info

function create_user {

read -p "enter the username: " username
sudo useradd -m $username

}

for ((i=1; i<=5; i++))
do
        create_user
done
