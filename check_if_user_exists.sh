#!/bin/bash

<<info 

this shell scripts checks is user is exists or no 


info

read -p "Enter the username you want to check: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "user does not exists"
else
	echo "user exists"
fi
