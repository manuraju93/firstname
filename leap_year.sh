#!/bin/bash
echo "ENTER THE YEAR TO CHECK"
read YEAR
if [[ $YEAR =~ ^[[:digit:]]+$ ]];
then
	Y=$(( $YEAR % 4 ))

	if [ $Y -eq 0 ];
	then
		echo "$YEAR IS A LEAP YEAR"
	else
		echo "$YEAR IS NOT A LEAP YEAR"
	fi
else
	echo "PLEASE ENTER ONLY NUMBERS"
fi
echo "LEAP YEAR is $YEAR"
