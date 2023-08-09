#!/bin/bash

#Description: This script will rename the .txt files

for i in *.txt; do
        mv $i ${i%.txt}.none
done

