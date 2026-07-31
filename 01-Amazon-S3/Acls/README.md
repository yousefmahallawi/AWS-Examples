# S3 ACL Cross-Account Example

This example demonstrates the legacy **Amazon S3 Access Control List (ACL)** workflow for allowing another AWS account to upload objects to a bucket.

## Steps

1. Create an S3 bucket.
2. Disable the ACL-related Block Public Access settings.
3. Configure bucket ownership.
4. Apply a bucket ACL that grants permissions to another AWS account.
5. Upload an object from the second account.
6. Clean up the resources.

## Notes

* ACLs are considered a **legacy access control mechanism**.
* Modern Amazon S3 designs usually prefer **Bucket Policies**, **IAM Policies**, or **Access Points** instead of ACLs.
* This example is useful for understanding how older cross-account upload workflows were implemented.
