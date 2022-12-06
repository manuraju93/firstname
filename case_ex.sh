#!/bin/bash
echo -n "ENTER A NUMBER: "
read VAR
case $VAR in
	1)
		echo "ONE"
		;;
	2)
		echo "TWO"
		;;
	3)
		echo "THREE"
		;;
	*)
		echo "Neither 1 2 or 3"
		;;
esac
