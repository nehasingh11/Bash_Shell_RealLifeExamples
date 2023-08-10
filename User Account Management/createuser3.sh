#!/bin/bash

# Author: Neha Singh
# Date : 08/10/2023
# Description: This script will create a user account with description if it does not exist.

echo "Please provide a username?"
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]; then
                echo "ERROR -- User $u already exist"
                echo "Please choose another username"
                echo
        else
                echo "Please provide user description"
                read d
                echo
                sudo useradd $u -c "$d"
                echo "$u account has been created"
        fi




