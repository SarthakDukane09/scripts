#!/bin/bash

<<info

this schell script will take periodic backups

eg.
 ./backup.sh <source> <destination>
 src /home/ubuntu/scripts
 dest /home/ubuntu/backups

info

src=$1
dest=$2


timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backup completed"
