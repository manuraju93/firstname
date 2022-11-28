#!/bin/bash

DISK_SPACE=`df -h . | awk -F " " '{print $(NF -1)}'|tail -1 | sed "s/%//g"`

if [ $DISK_SPACE -ge 20 ];
then
	#echo "DISK IS FULL" | mailx -s "WARNING DISK SPACE FULL" -c "xyz@somecompany.com" "abc@somecompany.com"
	echo "DISK SPACE IS FULL"
fi
