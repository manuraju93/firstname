#!/bin/bash
set -x

NUM=$1

SUM=0

while [ $NUM -gt 0 ];
do
	SUM=`expr $SUM + $NUM`
	NUM=`expr $NUM - 1`
done

echo "SUM is $SUM"
