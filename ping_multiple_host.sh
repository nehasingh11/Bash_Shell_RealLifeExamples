#!/bin/bash

#Author: Neha Singh
#Date: 08/08/2023
#Description: This script will ping multiple remote host (ip's read from a file my-hosts) and notify
#Modified: 08/08/2023

hosts="$HOME/my-hosts"

for ip in $(cat $hosts); do

        ping -c1 $ip &> /dev/null     #ping one time with -c1. /dev/null in Linux is a null device file. This will discard anything written to it, and will return EOF on reading.              
                if [ $? -eq 0 ]; then
                        echo "$ip is reachable"
                else
                        echo "$ip not reachable"
                fi

done