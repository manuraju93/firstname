#!/bin/bash


factorial()
{
	while [ $NUM -ge 1 ];
	do
		FACT=`expr $FACT \* $NUM`
		NUM=$(( $NUM - 1 ))
	done
	echo "FACTORIAL OF $VAR is $FACT"
}

for i in $*
do
	FACT=1
	NUM=$i
	VAR=$i
	factorial 
done
