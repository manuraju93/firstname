#!/bin/bash


DAY=`date +%a | tr '[a-z]' '[A-Z]'`
TODAY=`date '+%Y%m%d'`
FILE_PATH="/home/ec2-user/linux_commands"
case $DAY in
	MON)
		echo "TAKING BACKUP OF ACCESS AND ERROR LOG FILES"
		cp $FILE_PATH/access_log $FILE_PATH/access_log-${TODAY}
		cp $FILE_PATH/error_log $FILE_PATH/error_log-${TODAY}
                               ;;
    TUE|WED)	
	    	echo "COPYING ACCESS AND ERROR LOG FILES /tmp"
		cp $FILE_PATH/access_log /tmp/access_log-${TODAY}
		cp $FILE_PATH/error_log /tmp/error_log-${TODAY}
				;;
    THU|FRI)	
	    	echo "renaming access and error log files"
		mv $FILE_PATH/access_log $FILE_PATH/access_log-${TODAY}
		mv $FILE_PATH/error_log $FILE_PATH/error_log-${TODAY}
	                    	;;
    SAT|SUN)	
	    	echo "delete the log files"
		cd $FILE_PATH
		rm *log
				;;
	*)	
		echo "INVALID OPTION"
		                ;;
esac





