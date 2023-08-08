#!/bin/bash

#Author: Neha Singh
#Date: 08/08/2023
#Description: This script will delete files older than 90 days
#Modified: 08/08/2023

find $HOME/ -mtime +90 -exec mv {} {}.old \;