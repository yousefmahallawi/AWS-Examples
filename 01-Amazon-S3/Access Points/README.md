# Amazon S3 Access Points

Amazon S3 Access Points simplify access management for shared datasets.

## Features

- Separate Access Point Policies
- Independent Block Public Access settings
- VPC-only or Internet access
- Simplifies large bucket policies

## Multi-Region Access Points

- Global endpoint
- Routes requests to the lowest-latency Region
- Uses AWS Global Accelerator
- Works with S3 Replication

## Object Lambda Access Points

Object Lambda allows Lambda functions to modify objects before they are returned to clients.

Supported operations:

- GET
- HEAD
- LIST