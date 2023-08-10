#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will find directories without users
#Modified: 08/09/2023


cd /home             #/home has all the usernames folder whose records are present in /etc/passwd
for dir in *; do
        chk=$(grep -c "/home/$dir" /etc/passwd)
        if [ $chk -ge 1 ]; then
                echo "$dir is assigned to a user"
        else
                echo "$dir is NOT assigned to a user"
                sudo rm -r $dir
        fi
done

# Notes: To create a user. Use the -m (--create-home) option to create the user home directory as /home/username:
#       sudo useradd -m username
# To set user password
#       sudo passwd username
# To delete the user
#       userdel username