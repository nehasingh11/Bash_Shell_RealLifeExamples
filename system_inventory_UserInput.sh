#!/bin/bash

# Author : Neha Singh
# Date : 08/11/2023
# Description : This script will ask to add or delete a record from database file
# Modified : 08/11/2023

clear

echo
echo "Please select one of the following options:"
echo
echo "a = Add a record"
echo "d = Delete a record"
echo

read choice

case $choice in
        a) $HOME/add-record;;
        d) $HOME/delete-record;;
        *) echo "Invalid choice - Bye!"
esac





