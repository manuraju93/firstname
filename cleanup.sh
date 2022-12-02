#!/bin/bash

echo "IN BELOW PATH FILES WILL GET DELETED"
DIR_PATH="/home/ec2-user/linux_commands/sub_dir1"

TOTAL=`ls ${DIR_PATH}| wc -l`

DEL=`expr $TOTAL - 20`

if [ $DEL -gt 0 ];
then
	cd $DIR_PATH
	ls -rt | head -${DEL} |xargs rm
	echo "NUMBER OF FILES"
	ls | wc -l
fi
