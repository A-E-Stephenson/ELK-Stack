#!/bin/bash

output=$HOME/research/sys_info.txt
#output=~/research/sys_info.txt

if [ ! -d ~/research ]
then
mkdir ~/research
fi

mkdir ~/research 2>/dev/null

echo "Quick System Information Script" > $output
date >> $output
echo "" >> $output
echo "Machine Type Info: $MACHTYPE"
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> $output
echo -e  "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers:" >> $output
cat /etc/resolv.conf >> $output
echo -e "\nMemory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
echo -e "IP Info: $(ip addr | head -n 9 | tail -n 2) \n"
echo -e "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers:" >> $output
cat /etc/resolv.conf >> $output
echo -e "\nMemory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
echo -e "IP Info: $(ip addr | head -n 9 | tail -n 2) \n"
echo -e "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers: " >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\mWho is logged in: \n $(who -a) \n" >> $output 

