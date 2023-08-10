#!/bin/bash

# Author : Neha Singh
# Date : 08/10/2023
# Description : This script will find dead or zombie processes (e.g sleep 500) and kill it
# Modified : 08/10/2023

ps -ef | grep "sleep" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}
echo "All sleeping process are killed"