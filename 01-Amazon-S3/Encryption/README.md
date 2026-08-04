# Amazon S3 Encryption

This example demonstrates the different server-side encryption options available in Amazon S3.

## Topics Covered

- Encryption in transit
- Server-Side Encryption with Amazon S3 managed keys (SSE-S3)
- Server-Side Encryption with AWS KMS (SSE-KMS)
- Server-Side Encryption with Customer-Provided Keys (SSE-C)
- Retrieving objects encrypted with SSE-C
- Common encryption-related AWS CLI commands

## Files

- `ssec.sh` – Demonstrates uploading and downloading objects using different S3 encryption methods.

## Notes

- SSE-S3 is enabled by default for all newly uploaded objects.
- SSE-KMS uses AWS KMS customer managed keys and requires additional IAM permissions.
- SSE-C requires the customer to provide the encryption key for every upload and download request.
- Encryption protects object contents, but not object metadata.