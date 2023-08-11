#!/bin/bash

# Author : Neha Singh
# Date : 08/11/2023
# Description : This script will add system inventory to database file
# Modified : 08/11/2023

clear

echo "Please enter hostname?"
read host
echo

grep -q "$host" $HOME/database
if [ $? -eq 0 ]; then
        echo "ERROR -- Hostname $host already exist"
        echo
        exit 0
fi

echo "Please enter IT address?"
read ip
echo

grep -q $ip $HOME/database
if [ $? -eq 0 ]; then
        echo "ERROR -- IP $ip already exist"
        echo
        exit 0
fi

echo "Please enter Description?"
read des
echo

echo "$host $ip $des" >> database
echo "The provided record has been added"
echo
