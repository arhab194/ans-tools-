#!/bin/bash
set -x

if [[ ! -e /Users/ahalim/ansible/data ]]; then
          mkdir /Users/ahalim/ansible/data
fi
CURRENT_TIME=$(date "+%d.%m.%y-%H:%M")
HOST=`uname -a | awk '{print $2}' | cut -d "." -f1`
UPTIME=`uptime`
echo "Date:$CURRENT_TIME" >> /Users/ahalim/ansible/data
echo "Server Name: $HOST" >> /Users/ahalim/ansible/data
echo "UPTIME: $uptme" >> /Users/ahalim/ansible/data
top -b -n 1 | grep -v days | head -11 >> /Users/ahalim/ansible/data/top.out
sar -u 5 10 >> /Users/ahalim/ansible/data/sar.out
vmstat -a  >> /Users/ahalim/ansible/data/free.out
