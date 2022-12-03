#!/bin/bash
FILE_PATH="/home/ec2-user/linux_commands"
echo "JOINING TWO GIVEN FILES"
(while IFS= read -r a <&3 && IFS= read -r b <&4;
do
	echo "$a"
	echo "$b"
done) 3<${FILE_PATH}/sample1.csv 4<${FILE_PATH}/sample2.csv


