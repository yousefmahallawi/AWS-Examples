#!/usr/bin/env bash

echo "== Delete Bucket =="

if [ -z "$1" ]; then
    echo "Usage: ./delete-bucket.sh <bucket-name>"
    exit 1
fi

BUCKET_NAME=$1

aws s3api delete-bucket \
    --bucket "$BUCKET_NAME"

echo "Bucket deleted."