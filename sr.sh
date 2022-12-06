#!/bin/bash
for NAME in $*
do
	echo "$NAME"	
	VAR=$( systemctl show -p ActiveState $NAME | sed 's/ActiveState=//g' )

	if [[ $VAR == "active" ]];
	then
       		echo "SERVICE $NAME is running"
	else
       		echo "SERVICE $NAME is not running"
	fi
done

echo "SCRIPT NAME IS $0"
