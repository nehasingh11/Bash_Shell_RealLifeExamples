#!/bin/bash

# Description: This script will copy files to multiple remote servers using scp

# create a file with hostname and keys 
# azureuser@172.190.233.20 C:\\Users\\Acer\\Downloads\\vm1.pem
# azureuser@172.190.55.66 C:\\Users\\Acer\\Downloads\\vm2.pem



while read line; do
        hostname=$(echo $line | cut -d " " -f 1)
        key=$(echo $line | cut -d " " -f 2)
      
        scp -i $key /c/Users/Acer/bash_course/sandeep_love $hostname:/tmp

done < ./file

