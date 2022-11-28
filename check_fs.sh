#!/bin/bash

echo "ENTER THE NAME TO CHECK"
read NAME

if [ -L $NAME ];
then
	echo "GIVEN $NAME IS LINK"
elif [ -f $NAME ];
then
	echo "GIVEN $NAME IS FILE"
elif [ -d $NAME ];
then
	echo "GIVEN $NAME IS DIR"
else
	echo "GIVEN $NAME DOESNOT EXSISTS"
fi
