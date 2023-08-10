#!/bin/bash

#Author: Neha Singh
#Date: 08/08/2023
#Description: Backup /etc /var filesystem
#Modified: 08/08/2023

tar -cvf /tmp/backup.tar /etc /var

gzip /tmp/backup.tar

find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]; then
        echo "Backup was created!"
        echo
        echo "Archiving Backup"
#to send a copy of the backup to another server
        scp -i ~/.ssh/vm1.pem /tmp/backup.tar.gz azureuser@172.190.233.20:/tmp
else
        echo "Backup failed"

fi
