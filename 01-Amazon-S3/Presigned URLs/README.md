# Amazon S3 Presigned URLs

Presigned URLs provide temporary access to private S3 objects without requiring AWS credentials.

## Generate a Presigned URL

```bash
aws s3 presign s3://mybucket/myobject \
  --expires-in 300
```

## URL Components

- X-Amz-Algorithm
- X-Amz-Credential
- X-Amz-Date
- X-Amz-Expires
- X-Amz-SignedHeaders
- X-Amz-Signature

## Notes

- Expiration time is measured in seconds.
- Commonly used for secure downloads and uploads.
- Generated using the AWS CLI or AWS SDK.