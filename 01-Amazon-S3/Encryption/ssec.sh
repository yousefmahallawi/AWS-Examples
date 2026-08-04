#!/usr/bin/env bash

# Create bucket
aws s3 mb s3://encryption-fun-ab-135

# Create sample file
echo "Hello World" > hello.txt

# Upload using default SSE-S3
aws s3 cp hello.txt s3://encryption-fun-ab-135

# Upload using SSE-KMS
aws s3api put-object \
  --bucket encryption-fun-ab-135 \
  --key hello.txt \
  --body hello.txt \
  --server-side-encryption aws:kms \
  --ssekms-key-id "a1bb2b48-ce90-49ff-bd06-f23705bcc0d8"

# Generate customer key
export BASE64_ENCODED_KEY=$(openssl rand -base64 32)
echo "$BASE64_ENCODED_KEY"

export MD5_VALUE=$(echo "$BASE64_ENCODED_KEY" | md5sum | awk '{print $1}' | base64 -w0)
echo "$MD5_VALUE"

# Example SSE-C upload (expected to fail if MD5 is incorrect)
aws s3api put-object \
  --bucket encryption-fun-ab-135 \
  --key hello.txt \
  --body hello.txt \
  --sse-customer-algorithm AES256 \
  --sse-customer-key "$BASE64_ENCODED_KEY"

# Working SSE-C example
openssl rand -out ssec.key 32

aws s3 cp hello.txt s3://encryption-fun-ab-135/hello.txt \
  --sse-c AES256 \
  --sse-c-key fileb://ssec.key

aws s3 cp s3://encryption-fun-ab-135/hello.txt hello.txt \
  --sse-c AES256 \
  --sse-c-key fileb://ssec.key