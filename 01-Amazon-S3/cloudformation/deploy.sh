#!/usr/bin/env bash

echo "== Deploy S3 Bucket via CloudFormation =="

STACK_NAME="cfn-s3-simple"

aws cloudformation deploy \
    --template-file template.yaml \
    --no-execute-changeset \
    --region us-west-2 \
    --stack-name "$STACK_NAME"