# Amazon S3 Checksums and ETags

This section explores how Amazon S3 verifies object integrity using checksums and ETags.

## Topics Covered

- MD5 checksums
- ETag values
- `head-object`
- Uploading objects with checksums
- CRC32
- Terraform ETag behavior

## Why This Matters

Checksums help verify that objects uploaded to Amazon S3 have not been modified or corrupted during transfer.

Terraform also uses object hashes (ETags) to determine when an object has changed and whether it should be updated.
