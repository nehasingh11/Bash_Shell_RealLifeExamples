#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will list users logged in by date which is provided by user input
#Modified: 08/09/2023

echo "Please enter day (e.g Mon)"
read d
echo
echo "Please enter month (e.g Aug)"
read m
echo
echo "Please enter date (e.g 29)"
read da
echo

last | grep "$d $m  $da" | awk '{print $1}'