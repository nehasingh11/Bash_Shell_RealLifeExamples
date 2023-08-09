#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will list users logged in today.
#Modified: 08/09/2023

today=$(date | awk '{print $1,$2}')
date=$(date | awk '{print $3}')          # Since date format is Wed Aug  9 -> 2 spaces before 9

last | grep "$today  $date" | awk '{print $1}'      # list the users