#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will copy files from local host to remote host and between remote hosts
#Modified: 08/09/2023

scp -i C:\Users\Acer\Downloads\vm1.pem C:\Users\Acer\Downloads\ping-hosts.txt azureuser@172.190.233.20:/tmp



# To copy files between two remote hosts
# Key should always have 600 permission (chmod 600 vm1.pem) -> vm1.pem is key of destination server
scp -i ~/.ssh/vm1.pem /home/azureuser/remote-file azureuser@172.190.233.20:/tmp