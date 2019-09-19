#!/bin/bash

DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP=db-$DATE.sql

DB_HOST=$1
DB_PASS=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldump -u root -h $DB_HOST -p$DB_PASS $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIAVFLOHN4UCZEANLJN && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "Uploading $BACKUP backup..." && \
aws s3 cp /tmp/$BACKUP s3://$BUCKET_NAME/
