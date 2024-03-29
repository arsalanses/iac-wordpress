#!/bin/bash

set -x

DEST=~/db_backups
DB_HOST="127.0.0.1"
DB_PORT=33306
DB_USER="root"
DB_PASS="0hELsHHOhNNL2g8u5eL/L53BfQ9H3pD5P5QToX1Gw98="
DB_NAME="WPDatabase"
BUCKET_SUBDIR="sub"

mkdir -p $DEST

if ! command -v mysqldump > /dev/null 2>&1
then
	echo "mysqldump is required"
	exit 1
fi

nice mysqldump -h $DB_HOST --port $DB_PORT -u $DB_USER -p$DB_PASS --single-transaction --opt --skip-lock-tables $DB_NAME | gzip > "$DEST"/dbbackup-$(date -I).gz

# ~/s3/mc cp $DEST/dbbackup-$(date -I).gz backup/g2-backup-dbs/$BUCKET_SUBDIR/

# ~/s3/mc rm --force --recursive --older-than 60d backup/g2-backup-dbs/$BUCKET_SUBDIR/

# rm -rf ~/db_backups
