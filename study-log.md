# AWS SAA-C03 Study Log

This document records my hands-on progress while preparing for the AWS Certified Solutions Architect – Associate (SAA-C03) certification. Each session summarizes the topics I studied, the practical exercises I completed, and the updates made to this repository.

---

## 2026-07-24 | Session 1

### AWS Environment Setup

#### Objectives

- Prepare a secure AWS environment for hands-on practice.
- Configure the required AWS tools.
- Establish cost controls before provisioning AWS resources.

#### Topics Covered

- AWS account creation
- Root user security
- Multi-Factor Authentication (MFA)
- IAM administrator user
- AWS CLI installation and configuration
- AWS Budgets

#### Commands Practiced

```bash
aws configure
aws sts get-caller-identity
```

#### Key Takeaways

- The root user should only be used for account-level administrative tasks.
- IAM users provide a safer way to perform everyday AWS operations.
- AWS CLI allows AWS services to be managed directly from the command line.
- Budget alerts should be configured before creating cloud resources.

#### Repository Updates

- Initialized the repository.
- Added the `00-Setup` section.
- Configured `.gitignore`.
- Created the initial project documentation.
- Started documenting my AWS learning journey.

---

## 2026-07-25 | Session 2

### Amazon S3 Fundamentals

#### Objectives

- Understand the core concepts of Amazon S3.
- Learn how buckets and objects are managed.
- Compare using the AWS Console and AWS CLI.

#### Topics Covered

- Bucket creation
- Object uploads and downloads
- Versioning
- Server-side encryption
- Object tags
- Object metadata
- Object Lock
- Storage classes
- Object keys and prefixes
- AWS CloudShell
- High-level AWS CLI commands
- Low-level AWS CLI commands

#### Commands Practiced

```bash
aws s3 ls
aws s3 cp
aws s3 mv
aws s3 rm
aws s3 sync
aws s3 mb
aws s3 rb

aws s3api create-bucket
aws s3api list-buckets
aws s3api put-object
aws s3api get-object
aws s3api copy-object
```

#### Key Takeaways

- Amazon S3 stores data as objects inside buckets.
- Buckets contain objects identified by unique object keys.
- Folders displayed in the AWS Console are actually object prefixes.
- `aws s3` provides simplified high-level commands, while `aws s3api` exposes the complete S3 API.
- AWS CloudShell provides a Linux environment with the AWS CLI already installed.

#### Repository Updates

- Created the `01-Amazon-S3` section.
- Added Amazon S3 documentation.
- Added AWS CLI examples.
- Recorded commands and study notes.

---

## 2026-07-26 | Session 3

### Amazon S3 Automation

#### Objectives

- Automate repetitive Amazon S3 operations.
- Build reusable Bash scripts.
- Become familiar with Linux utilities used alongside the AWS CLI.

#### Topics Covered

- Bash scripting
- Shebangs
- Script permissions
- Input validation
- Bucket automation
- Object management
- File synchronization
- JMESPath queries
- JSON processing with `jq`
- Linux utilities (`tree`, `dd`, `chmod`, `set -e`)

#### Commands Practiced

```bash
aws s3api list-objects
aws s3api list-objects-v2
chmod
jq
tree
```

#### Key Takeaways

- Bash scripts simplify repetitive AWS CLI tasks.
- Scripts should validate user input before execution.
- JMESPath queries make AWS CLI output easier to filter.
- `jq` is useful for processing JSON responses.
- Buckets created outside `us-east-1` require a `LocationConstraint`.

#### Repository Updates

- Added reusable Bash scripts.
- Expanded the Amazon S3 documentation.
- Added advanced AWS CLI examples.
- Documented Linux utilities used throughout the exercises.

---

## 2026-07-27 | Session 4

### Amazon S3 Development and Infrastructure as Code

#### Objectives

- Explore programmatic interaction with Amazon S3.
- Learn multiple Infrastructure as Code (IaC) approaches.
- Compare AWS-native and third-party tools.

#### Topics Covered

- AWS SDK for Ruby
- AWS Tools for PowerShell
- AWS CloudFormation
- Terraform
- AWS CDK
- Pulumi

#### Commands Practiced

```bash
aws cloudformation deploy
aws cloudformation delete-stack

terraform init
terraform apply
terraform destroy

cdk bootstrap
cdk synth
cdk deploy

pulumi up
```

#### Key Takeaways

- SDKs allow applications to communicate directly with AWS services.
- CloudFormation is AWS's native Infrastructure as Code service.
- Terraform provides a cloud-agnostic approach to infrastructure provisioning.
- AWS CDK generates CloudFormation templates using programming languages.
- Pulumi also provisions infrastructure using general-purpose programming languages.

#### Repository Updates

- Added AWS SDK examples.
- Added CloudFormation examples.
- Added Infrastructure as Code examples.
- Expanded documentation with Terraform, AWS CDK, and Pulumi examples.

---

## 2026-07-28 | Session 5

### Amazon S3 — Checksums and Object Integrity

#### Objectives

- Understand how Amazon S3 validates uploaded objects.
- Learn how Terraform detects changes to managed objects.

#### Topics Covered

- MD5 checksums
- CRC32 checksums
- ETags
- Object integrity
- Terraform object updates

#### Commands Practiced

```bash
md5sum

aws s3api head-object

aws s3api put-object \
  --checksum-algorithm CRC32
```

#### Key Takeaways

- Checksums help verify that uploaded data has not been corrupted.
- ETags are commonly used to detect changes to object contents.
- `head-object` returns object metadata, including checksum information.
- Terraform can detect file changes by comparing object hashes.

#### Repository Updates

- Added checksum examples.
- Documented ETag behavior.
- Added Terraform object examples.

---

## 2026-07-29 | Session 6

### Amazon S3 — Object Prefixes and Metadata

#### Objectives

- Understand how Amazon S3 organizes objects internally.
- Learn the difference between object prefixes and traditional folders.
- Explore both system metadata and user-defined metadata.

#### Topics Covered

- Object keys
- Object prefixes
- Folder simulation
- Object key length limits
- System metadata
- User-defined metadata
- Metadata updates

#### Commands Practiced

```bash
aws s3api head-object \
  --bucket <bucket-name> \
  --key assets/images/photo.jpg

aws s3api copy-object \
  --bucket <bucket-name> \
  --copy-source <bucket-name>/assets/images/photo.jpg \
  --key assets/images/photo.jpg \
  --metadata-directive REPLACE \
  --metadata project=AWS-SAA
```

#### Key Takeaways

- Amazon S3 does not use real folders; it stores objects using object keys.
- Prefixes are simply part of an object's key and help organize data logically.
- The maximum length of an object key is 1,024 bytes.
- Metadata describes an object without modifying its contents.
- System metadata is managed by AWS, while user-defined metadata uses the `x-amz-meta-` prefix.
- Updating metadata changes object attributes without changing the file itself.

#### Repository Updates

- Expanded the Amazon S3 documentation with notes about prefixes and metadata.
- Added examples demonstrating how object keys simulate folders.
- Documented the differences between system metadata and user-defined metadata.
## 2026-07-30 | Session 8

### Amazon S3 — Advanced Features

#### Objectives

- Learn advanced Amazon S3 features and storage options.
- Understand object protection and request styles.
- Compare Amazon S3 storage classes.

#### Topics Covered

- S3 Object Lock
- Retention Periods
- Legal Holds
- S3 Bucket URI
- AWS CLI namespaces
- Virtual-hosted vs Path-style requests
- DualStack endpoints
- Amazon S3 Storage Classes

#### Key Takeaways

- Object Lock prevents objects from being deleted or overwritten.
- S3 Bucket URIs are commonly used with AWS CLI commands.
- Virtual-hosted-style requests are the recommended request format.
- Amazon S3 provides multiple storage classes for different access patterns and cost requirements.

#### Repository Updates

- Added notes about Object Lock.
- Documented S3 request styles.
- Added S3 storage class overview.
- Expanded Amazon S3 documentation.