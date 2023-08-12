#!/bin/bash

# Author : Neha Singh
# Date : 08/11/2023
# Description : This script will create a new script with predefined information at the top along with permissions to execute
# Modified : 08/11/2023

read -r -p "Enter the name of the script: " script
read -r -p "What is your full name: " fname
read -r -p "What is the description of this script: " des

echo "#!/bin/bash" > $HOME/$script
echo
echo "#################################################" >> $HOME/$script
echo
echo "# Author: " $fname >> $HOME/$script
echo
echo "# Date: " $(date) >> $HOME/$script
echo
echo "# Description: " $des >> $HOME/$script
echo
echo "# Modified: " $(date) >> $HOME/$script
echo
echo "##################################################" >> $HOME/$script
echo
chmod 700 $script
nano $script

