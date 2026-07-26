#!/usr/bin/env bash

# Exit if no bucket name is provided.
if [ -z "$1" ]; then
    echo "There needs to be a bucket name."
    exit 1
fi
# Store the bucket name passed as the first argument.
BUCKET_NAME=$1
# Create the S3 bucket and print its location.
aws s3api create-bucket \
    --bucket "$BUCKET_NAME" \
    --query Location \
    --output text