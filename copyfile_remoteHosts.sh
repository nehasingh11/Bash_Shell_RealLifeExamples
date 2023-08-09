#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: This script will copy files to remote hosts
#Modified: 08/09/2023

a=$(cat $HOME/abc)

for i in $a; do
        scp somefiles $i:/tmp
done

