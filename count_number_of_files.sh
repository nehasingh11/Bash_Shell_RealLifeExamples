#!/bin/bash

# Author : Neha Singh
# Date : 08/10/2023
# Description: This script will verify total number of files
# Modified : 08/10/2023


#a=$(ls -l file* | wc -l)   # define variable a

if [ $(ls -l file* | wc -l) -eq 20 ]; then
        echo "Yes there are 20 files"
else
        echo "Files are less than 20"
fi
