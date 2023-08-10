#!/bin/bash

# Author: Neha Singh
# Date : 08/10/2023
# Description: This script will create a user account if it does not exist.

echo "Please provide a username?"
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]; then
                echo "ERROR -- User $u already exist"
                echo "Please choose another username"
                echo
        else
                sudo useradd $u
                echo "$u account has been created"
        fi
