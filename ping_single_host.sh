#!/bin/bash

#Author: Neha Singh
#Date: 08/08/2023
#Description: This script will ping a remote host and notify
#Modified: 08/08/2023

host="8.8.8.8"

ping -c1 $host &> /dev/null     #ping one time with -c1. /dev/null in Linux is a null device file. This will discard anything written to it, and will return EOF on reading.     
        if [ $? -eq 0 ]; then
                echo "$host is reachable"
        else
                echo "$host not reachable"
        fi