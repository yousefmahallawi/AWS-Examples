#!/usr/bin/env bash

echo "== Put Object =="

if [ -z "$1" ]; then
    echo "Usage: ./put-object.sh <bucket-name> <file>"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Please provide a file to upload."
    exit 1
fi

BUCKET_NAME=$1
FILENAME=$2

OBJECT_KEY=$(basename "$FILENAME")

aws s3api put-object \
    --bucket "$BUCKET_NAME" \
    --body "$FILENAME" \
    --key "$OBJECT_KEY"

echo "Upload complete."