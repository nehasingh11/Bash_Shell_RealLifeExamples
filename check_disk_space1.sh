#!/bin/bash

# Author : Neha Singh
# Date : 08/10/2023
# Description : This script will check for disk space
# Modified : 08/10/2023


df -h | tail -n +2 | grep -E -v "tmpfs|devtmpfs" > file

while read line; do

        b=$(echo "$line" | tr -s ' ' | cut -d " " -f 5 | cut -d "%" -f 1)

        if [ $b -ge 50 ]; then
                echo "Check disk space -> $line"
        fi
done < ./file

