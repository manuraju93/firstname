#!/bin/bash

echo "ENTER THE NUMBER TO FIND FACTORIAL"

read VAR
NUM=$VAR
FACT=1
while [ $VAR -gt 1 ]
do
	FACT=`expr $FACT \* $VAR`
	VAR=`expr $VAR - 1`

done

echo "FACTORIAL OF $NUM is $FACT"
