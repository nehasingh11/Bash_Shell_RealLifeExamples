#!/bin/bash

#Description: This script will check for files

files="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake"

echo

for i in $files; do
        if [ ! -e $i ]; then
                echo "$i do not exist"
                echo
        fi
done
