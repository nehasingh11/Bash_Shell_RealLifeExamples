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
#       scp /tmp/backup.tar.gz root@192.168.x.x:/path      #to send a copy of the backup to another server
else
        echo "Backup failed"

fi
