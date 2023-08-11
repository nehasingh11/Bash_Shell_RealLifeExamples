#!/bin/bash

# Author : Neha Singh
# Date : 08/10/2023
# Description : This script will check for disk space
# Modified : 08/10/2023


df -H | grep -vE '^Filesystem|tmpfs|devtmpfs' | awk '{print $5,$1}' | while read output
do
        usep=$(echo $output | awk '{print $1}' | cut -d '%' -f 1)
        partition=$(echo $output | awk '{print $2}')

        if [ $usep -ge 90 ]; then
                echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
        fi
done