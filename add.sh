#!/bin/bash


echo "ENTER THE NUMBERS"
read NUM1 NUM2 


SUM=`expr $NUM1 + $NUM2 `
MUL=`expr $NUM1 \* $NUM2`

echo "SUM OF $NUM1,$NUM2 is $SUM"
echo "MUL OF $NUM1,$NUM2 is $MUL"
