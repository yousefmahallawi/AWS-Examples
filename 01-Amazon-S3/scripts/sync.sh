#!/usr/bin/env bash

echo "== Sync =="

if [ -z "$1" ]; then
    echo "Usage: ./sync.sh <bucket-name> <folder>"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Please provide a folder."
    exit 1
fi

BUCKET_NAME=$1
FOLDER=$2

aws s3 sync "$FOLDER" "s3://$BUCKET_NAME/files"

echo "Sync complete."