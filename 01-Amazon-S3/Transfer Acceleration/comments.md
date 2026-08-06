# Notes

Transfer Acceleration improves transfer performance for users located far from the target AWS Region.

Instead of uploading directly to the S3 Regional endpoint, requests first enter the AWS Global Network through the closest CloudFront Edge Location.

This feature only works with virtual-hosted style requests.