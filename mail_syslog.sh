#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will send email to administrator
#Modified: 08/09/2023



IT="neha1@gmail.com,nidhi2@gmail.com"

if [ -s /tmp/filtered-log ]; then
        cat /tmp/filtered-log | sort | uniq | mail -s "syslog messages" $IT
        rm /tmp/filtered-log
        else
fi


# To schedule the script run every 15 min
# edit the crontab -e
# */15 * * * * /root/log-alert
