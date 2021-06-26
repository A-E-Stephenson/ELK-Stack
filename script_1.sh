#!/bin/bash

mkdir ~/Research_2 > /dev/null  

echo "A Quick System Audit Script" >> ~/Research_2/sys_info1.txt
date >> ~/Research2/sys_info1.txt
echo "" >> ~/Research_2/sys_info1.txt
echo "Machine Type Info:" >> ~/Research_2/sys_info1.txt
echo $MACHTYPE >> ~/Research_2/sys_info1.txt
echo -e "Uname info: $(uname -a) \n" >> ~/Research_2/sys_info1.txt
echo -e "IP Info: (ip addr | grep inet | tail -n 2 | head -n 1) \n" >> ~/Research_2/sys_info1.$
echo "Hostname: $(hostname -s)" >> ~/Research_2/sys_info1.txt
echo -e "\n777 Files:" >> ~/Research_2/sys_info1.txt 
find / -type f -perm 777 >> ~/Research_2/sys_info.txt 
echo -e "\nTop 10 Processes" >> ~/Research_2/sys_info1.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/Research_2/sys_info1.txt

