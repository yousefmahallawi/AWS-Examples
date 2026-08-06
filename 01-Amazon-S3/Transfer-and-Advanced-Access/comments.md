# Notes

## Transfer Acceleration

- Uses the AWS Global Network to accelerate uploads over long distances.
- Requires virtual-hosted style requests.
- Bucket names must be DNS-compliant and cannot contain periods.
- Can take several minutes after enabling before becoming available.

---

## Presigned URLs

- Provide temporary access to private S3 objects.
- Can be generated using the AWS CLI or SDKs.
- Expiration time is specified in seconds.
- URL contains a cryptographic signature.

---

## Access Points

- Simplify access management for shared datasets.
- Each access point has:
  - its own policy
  - network controls
  - Block Public Access settings
- Can restrict requests to a VPC.

---

## Multi-Region Access Points

- Provide one global endpoint.
- Route requests to the bucket with the lowest latency.
- Work together with S3 Replication.
- Use AWS Global Accelerator.

---

## Object Lambda

- Modifies data returned by GET, HEAD and LIST operations.
- Original S3 objects remain unchanged.
- Uses AWS Lambda for transformations.

---

## Mountpoint for Amazon S3

Allows an S3 bucket to be mounted as a Linux filesystem.

Supports:

- reading existing files
- creating new files
- listing directories

Does not support:

- modifying existing files
- symbolic links
- file locking