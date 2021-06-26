#!/bin/bash

output=$HOME/research/sys_info1.txt
#output=~/research/sys_info1.txt

#list of commands
commands=(
'date'
'uname -a'
'hostname -s'
)

#List of sensitive files
etc_files=(
'/etc/passwd'
'/etc/shadow'
)

echo "The permission for sensitive /etc/files are:" > $output
for  etc_files in ${etc_files[@]}
do
ls -l $etc_files >> $output
done

if [ -d ~/research ]
then
  echo "Directory exists"
else
        mkdir ~/Research_april19
fi

if [ ! -d ~/research ]
then
        mkdir ~/Research_april19
if [ ! -d ~/research ]
then
        mkdir ~/Research_april19
fi

