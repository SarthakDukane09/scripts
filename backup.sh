#!/bin/bash

<<info
this shell script will take periodic backups

eg. 

./backup.sh <source>  <destination>



info


src="$1"
dest="$2"

timestamp=$(date '+%Y/%m/%d/-->%H:%M:%S')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://linux-backups-30-03-2025
echo "backup completed & uploaded to s3"
