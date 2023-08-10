#!/bin/bash

# Author: Neha Singh
# Date : 08/10/2023
# Description: This script will create a user account with description, ID if it does not exist.

echo "Please provide a username?"
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]; then
                echo "ERROR -- User $u already exist"
                echo "Please choose another username"
                echo
                exit 0

        fi


echo "Please provide user description"
read d
echo

echo "Do you want to specify user ID (y/n)?"
read response
echo

        if [ $response == y ]; then
                echo "Please enter UID?"
                read uid

                sudo useradd $u -c "$d" -u $uid
                echo
                echo "$u account has been created"

        elif [ $response == n ]; then
                echo "No worries we will assign a UID"
                sudo useradd $u -c "$d"
        fi