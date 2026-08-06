# Amazon S3 Transfer Acceleration

Amazon S3 Transfer Acceleration is a bucket-level feature that speeds up uploads and downloads over long distances by routing traffic through the AWS Global Network using CloudFront Edge Locations.

## Features

- Faster global uploads and downloads
- Uses the AWS global backbone network
- Supports virtual-hosted style requests
- Optional DualStack endpoint for IPv4 and IPv6

## Commands

```bash
aws s3api put-bucket-accelerate-configuration \
  --bucket mybucket \
  --accelerate-configuration Status=Enabled

aws configure set s3.addressing_style virtual

aws s3 cp file.txt s3://bucketname/keyname \
  --endpoint-url https://s3-accelerate.amazonaws.com

aws configure set default.s3.use_accelerate_endpoint true
```

## Notes

- Bucket names must be DNS-compliant.
- Buckets cannot contain periods.
- Transfer Acceleration can take several minutes before becoming active.
- Traffic is routed through the nearest CloudFront Edge Location.