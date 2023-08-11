#!/bin/bash

# Author : Neha Singh
# Date : 08/10/2023
# Description : This script will check for disk space
# Modified : 08/10/2023



echo
echo "Following is the disk space status"
echo
df -h | awk '0+$5 >= 10 {print}'