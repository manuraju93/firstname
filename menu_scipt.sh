#!/bin/bash

echo "SELECT THE OPTIONS BELOW"
echo "1)SEARCH WORD"
echo "2)CHECK THE NAME"
read VAR

case $VAR in
	1) echo "1"
		;;
	2) echo "2"
		;;
	*) echo "$VAR"
		;;
esac

