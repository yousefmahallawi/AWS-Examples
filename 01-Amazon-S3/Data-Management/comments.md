# Notes

## Strong Consistency

- Amazon S3 provides strong read-after-write consistency for all PUT, GET, LIST, and DELETE operations.
- Once a write completes successfully, all future reads immediately return the latest version of the object.
- Prior to January 2020, Amazon S3 used eventual consistency for some operations.

## Object Replication

Amazon S3 supports:

- Cross-Region Replication (CRR)
- Same-Region Replication (SRR)
- Bi-Directional Replication
- Batch Replication

Replication can:

- Preserve metadata
- Replicate to different storage classes
- Replicate existing objects
- Maintain copies in multiple AWS Regions
- Improve disaster recovery

## Versioning

- Stores multiple versions of the same object.
- Protects against accidental deletion and overwrites.
- Once enabled, versioning cannot be disabled—only suspended.
- Integrates with Lifecycle rules.
- Supports MFA Delete.

Bucket states:

- Unversioned
- Versioning Enabled
- Versioning Suspended

## Lifecycle Rules

Lifecycle rules automate object management.

Actions include:

- Transition objects between storage classes
- Archive objects
- Delete current versions
- Delete previous versions
- Remove expired delete markers
- Delete incomplete multipart uploads

Rules can filter objects using:

- Prefixes
- Tags
- Object size

## Transfer Acceleration

Transfer Acceleration improves upload speeds over long distances.

Features:

- Uses CloudFront Edge Locations.
- Transfers data over the AWS Global Backbone.
- Requires DNS-compliant bucket names.
- Works only with virtual-hosted-style requests.