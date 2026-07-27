# AWS SAA-C03 Study Log

This file tracks my progress while studying for the AWS Certified Solutions Architect – Associate (SAA-C03) certification.

---

## 2026-07-24

### AWS Environment Setup

Completed my initial AWS environment setup.

#### Completed

- Created an AWS account
- Enabled MFA for the root user
- Created a Zero Spend Budget
- Created an IAM administrator user
- Created AWS CLI access keys
- Installed AWS CLI
- Configured AWS CLI
- Verified authentication using `aws sts get-caller-identity`

#### Notes

Started building this repository to document my hands-on AWS learning journey.

---

## 2026-07-27

### Amazon S3

Completed the first section of Amazon S3.

#### Topics Covered

- Creating and deleting S3 buckets
- Uploading and downloading objects
- Recursive object deletion
- `aws s3` vs `aws s3api`
- Querying JSON responses
- AWS CLI output formats (JSON, Table, YAML)
- Bash scripting for AWS CLI automation
- Object synchronization with `aws s3 sync`
- Uploading objects programmatically using the AWS SDK for Ruby
- Introduction to Infrastructure as Code (CloudFormation)

#### Hands-on Practice

- Created and deleted multiple S3 buckets
- Uploaded and downloaded files using the AWS CLI
- Built reusable Bash scripts for common S3 tasks
- Used `jq` to process JSON output
- Learned how CloudFormation deploys AWS infrastructure
- Explored how applications interact with AWS using the SDK

#### Repository Updates

- Added the `01-Amazon-S3` section
- Documented CLI commands
- Added learning notes
- Created reusable Bash automation scripts
- Added SDK and CloudFormation examples

#### Status

✅ Amazon S3 section completed.