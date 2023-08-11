#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will log only defined keywords from /var/log/syslog (latest logs only)
#Modified: 08/09/2023

# To run the script in the background -  nohup <script-path> &
# To stop the running background script - fg
# To test the script , log something in syslog using logger command- logger -t invalid "<some message>"


tail -fn0 /var/log/syslog | while read line;      # -f - output appended data as the file grows
do

echo $line | grep -E -i "refused|invalid|error|fail|lost|shut|down|offline"
        if [ $? = 0 ]; then
                echo $line >> /tmp/filtered-log
        fi
done
