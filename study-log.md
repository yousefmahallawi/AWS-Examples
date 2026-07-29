# AWS SAA-C03 Study Log

This document records my hands-on progress while preparing for the AWS Certified Solutions Architect – Associate (SAA-C03) certification. Each entry summarizes the concepts I studied, the practical work I completed, and the improvements made to this repository.

---

## 2026-07-24 | Session 1

### AWS Environment Setup

#### Objectives

- Prepare a secure AWS environment for hands-on practice.
- Configure the tools required for the course.
- Establish cost controls before creating AWS resources.

#### Topics Covered

- AWS account setup
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

- The AWS root user should only be used for account-level administrative tasks.
- IAM users provide a safer way to perform everyday AWS operations.
- AWS CLI enables direct interaction with AWS services from the command line.
- Cost monitoring should be configured before provisioning cloud resources.

#### Repository Updates

- Initialized the repository.
- Added the `00-Setup` section.
- Created the project documentation.
- Configured `.gitignore`.
- Started documenting my AWS learning journey.

---

## 2026-07-25 | Session 2

### Amazon S3 Fundamentals

#### Objectives

- Understand the core concepts of Amazon S3.
- Learn how to manage buckets and objects.
- Compare management through the AWS Console and AWS CLI.

#### Topics Covered

- Bucket creation and configuration
- Object uploads and downloads
- Object versioning
- Server-side encryption
- Object metadata
- Object tags
- Object Lock
- S3 storage classes
- Prefixes and object keys
- AWS CloudShell
- High-level `aws s3` commands
- Low-level `aws s3api` commands

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

- Amazon S3 is an object storage service rather than a traditional file system.
- Buckets contain objects that are uniquely identified by object keys.
- The folders displayed in the AWS Console are prefixes rather than physical directories.
- The `aws s3` commands simplify common storage operations, while `aws s3api` exposes the complete Amazon S3 API for advanced management tasks.
- AWS CloudShell provides a preconfigured Linux environment with the AWS CLI ready to use.

#### Repository Updates

- Created the `01-Amazon-S3` section.
- Added Amazon S3 documentation.
- Recorded AWS CLI examples.
- Added command references and learning notes.

---

## 2026-07-26 | Session 3

### Amazon S3 Automation

#### Objectives

- Automate repetitive Amazon S3 operations.
- Build reusable Bash scripts for common AWS CLI tasks.
- Become familiar with Linux utilities used in AWS CloudShell.

#### Topics Covered

- Bash scripting
- Shebangs
- Script permissions
- Input validation
- Bucket automation
- Object management
- Recursive synchronization
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

- Bash scripts make AWS CLI operations repeatable and easier to maintain.
- User input should always be validated before executing AWS commands.
- JMESPath queries simplify filtering AWS CLI responses.
- `jq` provides powerful processing of JSON output.
- Buckets created outside `us-east-1` require a `LocationConstraint` when using the S3 API.

#### Repository Updates

- Added reusable Bash scripts.
- Expanded Amazon S3 documentation.
- Documented Linux utilities used throughout the exercises.
- Added advanced AWS CLI examples.

---

## 2026-07-27 | Session 4

### Amazon S3 Development and Infrastructure as Code

#### Objectives

- Explore programmatic interaction with Amazon S3.
- Learn different approaches to Infrastructure as Code (IaC).
- Compare native AWS tools with third-party solutions.

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

- SDKs allow applications to communicate directly with AWS services through code.
- CloudFormation is AWS's native Infrastructure as Code service.
- Terraform provides a cloud-agnostic approach to infrastructure provisioning.
- AWS CDK generates CloudFormation templates using programming languages.
- Pulumi enables infrastructure provisioning with general-purpose programming languages.
- Different Infrastructure as Code tools can provision the same AWS resources while using different workflows and syntaxes.

#### Repository Updates

- Added SDK examples.
- Added CloudFormation examples.
- Added Infrastructure as Code examples.
- Expanded Amazon S3 documentation with Terraform, AWS CDK, and Pulumi.
- Continued organizing the repository with practical examples and supporting documentation.

---
## 2026-07-28 | Session 5

### Amazon S3 — Checksums and Object Integrity

#### Objectives

- Understand how Amazon S3 validates uploaded objects.
- Learn how Terraform detects changes to managed objects.

#### Topics Covered

- MD5 checksums
- CRC32
- ETags
- Object metadata
- Terraform object updates

#### Commands Practiced

```bash
md5sum
aws s3api head-object
aws s3api put-object --checksum-algorithm CRC32
```

#### Key Takeaways

- Checksums verify that uploaded data has not been corrupted.
- ETags are commonly used to identify object content and detect changes.
- Terraform can use object hashes to determine when an S3 object should be updated.

#### Repository Updates

- Added checksum examples.
- Documented ETag behavior.
- Added Terraform object examples.

## 2026-07-29 | Session 6

# Amazon S3 — Object Prefixes & Metadata

Today's lesson focused on how Amazon S3 identifies objects internally. Before this session I thought folders actually existed inside S3, but the instructor demonstrated that they're only part of an object's key.

---

### Object Prefixes

An object stored as

```text
assets/images/photo.jpg
```

is actually interpreted as

```text
Prefix : assets/images/
Object : photo.jpg
```

The console displays this as folders, but Amazon S3 simply stores one long object key.

During the demonstration, different object names were tested to understand how prefixes behave. The complete object key—including every prefix—can be up to **1,024 bytes**.

---

### Metadata

Besides the object itself, Amazon S3 stores information that describes the object.

System metadata is managed by AWS and includes values such as:

- `Content-Type`
- `Cache-Control`
- `Content-Encoding`
- `Expires`

Applications can also attach their own metadata.

Example:

```text
x-amz-meta-project : AWS-SAA
x-amz-meta-owner   : Yousef
```

This information travels with the object without modifying the file itself.

---

### Practical Observation

Changing metadata doesn't change the contents of the uploaded file. Instead, it changes the information associated with that object, allowing applications and AWS services to process the object differently.

Likewise, changing the folder shown in the AWS Console doesn't move an object between directories—it simply changes the object's key.

---

### Key Takeaways

✔ S3 has no real folders.

✔ Prefixes are part of the object key.

✔ Object keys can be up to **1,024 bytes**.

✔ Metadata describes an object without changing its contents.

✔ User-defined metadata uses the `x-amz-meta-` prefix.

---

### Repository Update

Expanded the Amazon S3 notes by documenting how object prefixes and metadata work, together with observations made during the hands-on demonstration.