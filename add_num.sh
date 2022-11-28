#!/bin/bash

SUM=0

#SUM=`expr $1 + $2`

(( SUM=$1+$2 ))

DIV=`expr $1 / $2`

REM=`expr $1 % $2`

echo "SUM of $1 & $2 is $SUM"

echo "DIV of $1 & $2 is $DIV"

echo "REM of $1 & $2 is $REM"
