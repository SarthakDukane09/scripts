#!/bin/bash
<<help
this is a multi line comment
so that
we can write  whatever
and whenever we want 
here

help

# user create

echo "================================= Creation of User ============================"

read -p "enter the user name: " username

read -p "enter the passwerd: " password

sudo useradd -m "$username"

#sudo passwd -p "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "================== User Creation Completed =================="

#user delete

sudo userdel $username

echo "==================== User deletion completed ======================"

#user check

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then

	echo "as wc is 0 the user is deleted"
else
	echo "the user was not deleted"

fi

