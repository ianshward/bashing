#!/usr/bin/env bash

# ./script my-bucket 2015-11-10-14-45

BUCKET=$1
MATCH=$2

while read line ; do
    aws s3 cp s3://$BUCKET/_logs/$line logs/
done < <(aws s3 ls s3://$BUCKET/_logs/$MATCH | grep -oP "$MATCH.*")
