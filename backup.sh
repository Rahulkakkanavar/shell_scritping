#!/bin/bash

SOURCE_FILE="/mnt/log.txt"
BACKUP_DEST="/tmp"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKEDUP_FILE_NAME="log_$TIMESTAMP.txt"

#check if file exists
# -f flag will check if the file exists and it is a regular file

if [ -f "$SOURCE_FILE" ]; then
       cp "$SOURCE_FILE" "$BACKUP_DEST/$BACKEDUP_FILE_NAME"
       echo "Backup created in $BACKUP_DEST/$BACKEDUP_FILE_NAME"
else
	echo " Error: $SORUCE_FILE not found"
	exit 1
fi

	       
