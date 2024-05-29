#!/usr/bin/bash

#Variables

SOURCE_DIR="/home/test/Desktop/scripts_practice/"
BACKUP_DIR="/home/test/Desktop/scripts_practice/backup"
DATE=$(date+"%Y%m%d")
BACKUP_NAME="backup_$DATE.tar.gz"

#Create the backup

tar -czvf $BACKUP_DIR/$BACKUP_NAME $SOURCE_DIR

#Check if the backup was successful

if [ $? -eq 0 ]; then
	echo "backup successful: $BACKUP_DIR/$BACKUP_NAME"
else
	echo"Backup failed"
fi
