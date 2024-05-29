#bin/bash

DIRECTORY='/home/test/Desktop/scripts_practice'
THRESHOLD=80
EMAIL='hrishavsilwal1@gmail.com'

#get the disk usage

USAGE=$(df -h $DIRECTORY | grep -vE '^Filesystem' | awk '{rint $5}' | sed 's/%//g')

echo "$USAGE"

#check if the usage exceeds the threshold

if [ $USAGE > $THRESHOLD ]; then
	echo "Disk Usage of $DIRECTORY is at $USAGE%!" | mail -s "Disk Usage Alert" $EMAIL
fi
	
