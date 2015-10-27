#!/bin/bash

MAX_PING=254
for (( a=1; a<=MAX_PING;a++))
do
        ping -c 3 10.207.167.$a > /dev/null
        if [ $? -eq 0 ]
        then
                echo "ping ......10.207.167.$a is up "
        else
                echo "ping ......10.207.167.$a is down"
        fi
done
arp -a |awk -v 'OFS===>' '{print $2,$4}'|grep ':' |sed -e  's/(//' -e 's/)//'
