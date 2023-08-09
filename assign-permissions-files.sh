#!/bin/bash

#Author: Neha Singh
#Date: 08/09/2023
#Description: To know how much time it will take to assign permissions to files


total=$(ls -l file* | wc -l)

echo "It will take $total seconds to assign permissions..."
echo

for i in file.*; do
        echo "Assigning write permissions to $i"
        chmod a+w $i
        sleep 1
done

