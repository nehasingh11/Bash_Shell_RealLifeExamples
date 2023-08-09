#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will find directories without users
#Modified: 08/09/2023

cd $HOME
for dir in *; do
        chk=$(grep -c "$HOME/$dir" /etc/passwd)
        if [ $chk -ge 1 ]; then
                echo "$dir is assigned to a user"
        else
                echo "$dir is NOT assigned to a user"
        fi
done