#!/bin/bash

# Author: Neha Singh
# Date : 08/10/2023
# Description: This script will create a user account

echo "Please provide a username?"
read u
echo

sudo useradd $u
echo "$u account has been created"