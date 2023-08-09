#!/bin/bash

#Description: This script will remove file with name starting with 'a' and rename file starying with 'b'
# example bfile.txt to bfile_1.txt

for i in $(find $HOME -iname "*.txt" -exec basename {} \;); do
        if [ $i = a*.txt ]; then
                rm $i
        elif [ $i = b*.txt ]; then
                mv $i ${i%.txt}_1.txt
        fi

done