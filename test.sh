#!/usr/bin/bash

SOURCE_DIR="/home/test/Desktop/scripts_practice/"
DESTINATION_DIR="/home/test/Desktop/scripts_practice/backup"
BACKUP_NAME="backup1.tar.gz"

#create the backup

tar -czvf $DESTINATION_DIR/$BACKUP_NAME $SOURCE_DIR

if [ $? -eq 0 ]; then
	echo "Backup success: DESTINATION_DIR/BACKUP_NAME"
else
	echo "Backup failed"
fi
