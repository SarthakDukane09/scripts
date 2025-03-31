#!/bin/bash
echo "============================ Creation of user ============================="
sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============================ Creation of user Completed ============================="


echo "============================ Deletion of user ============================="

sudo userdel $username

echo "============================ Deletion of user Completed ============================="


echo "============================ Checking user is exist or not  ============================="

cat /etc/passwd | grep $username | wc

echo "as WordCount is 0 so, user is deleted"
echo -e "\n\n\n\n\n\n\n========================================="
