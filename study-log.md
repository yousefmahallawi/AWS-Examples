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

---

## 2026-07-30 | Session 9

### Amazon S3 — Storage Classes

#### Objectives

- Learn the characteristics of Amazon S3 storage classes.
- Compare storage classes based on performance, availability, durability, retrieval time, and cost.
- Understand when each storage class should be used.

#### Topics Covered

- S3 Standard
- S3 Reduced Redundancy Storage (RRS)
- S3 Standard-IA
- S3 One Zone-IA
- S3 Express One Zone
- S3 Glacier Instant Retrieval
- S3 Glacier Flexible Retrieval
- S3 Glacier Deep Archive
- S3 Glacier Vault

#### Commands Practiced

```bash
aws s3 cp hello.txt s3://class-fun-ab-6346 \
  --storage-class STANDARD_IA

aws s3 cp archive.zip s3://my-bucket \
  --storage-class GLACIER_IR

aws s3 cp backup.tar.gz s3://my-bucket \
  --storage-class GLACIER

aws s3 cp records.zip s3://my-bucket \
  --storage-class DEEP_ARCHIVE
```

#### Key Takeaways

- Amazon S3 provides multiple storage classes optimized for different access patterns and budgets.
- Storage classes differ in availability, retrieval speed, storage cost, retrieval fees, and minimum storage duration.
- Glacier storage classes are integrated into Amazon S3 and should not be confused with the legacy Glacier Vault service.
- Selecting the appropriate storage class can significantly reduce storage costs while meeting application requirements.

#### Repository Updates

- Expanded the Amazon S3 documentation with detailed storage class comparisons.
- Added notes covering Glacier storage classes and retrieval options.
- Documented storage class pricing characteristics, retrieval behavior, and common use cases.

## 2026-07-30 | Session 10

### Amazon S3 — Advanced Storage Classes

#### Objectives

- Complete the remaining Amazon S3 storage classes.
- Understand Intelligent-Tiering automation.
- Compare storage classes based on performance, durability, availability, latency, and cost.

#### Topics Covered

- S3 Glacier Deep Archive
- S3 Intelligent-Tiering
- Access tiers
- Monitoring charges
- Retrieval tiers
- Storage class comparison

#### Commands Practiced

```bash
aws s3api put-object \
  --bucket my-bucket \
  --key myfile \
  --body path/to/local/file \
  --storage-class INTELLIGENT_TIERING
  ## 2026-07-30 | Session 11

### Amazon S3 — Security Fundamentals

#### Objectives

- Understand the security features available in Amazon S3.
- Learn how Amazon S3 controls access to buckets and objects.
- Explore the different methods used to protect data stored in S3.

#### Topics Covered

- S3 Security Overview
- S3 Block Public Access
- Bucket Policies
- Access Control Lists (ACLs)
- Access Points
- Access Grants
- Object Ownership
- Versioning
- MFA Delete
- Object Tags
- CORS
- AWS PrivateLink for Amazon S3
- IAM Access Analyzer for S3
- In-Transit Encryption
- Server-Side Encryption
- Client-Side Encryption
- Compliance Validation
- Infrastructure Security

#### Key Takeaways

- Amazon S3 provides multiple layers of security for protecting buckets, objects, and data access.
- S3 Block Public Access is enabled by default and helps prevent accidental public exposure of buckets.
- Bucket Policies are the recommended way to manage permissions using JSON-based access policies.
- ACLs are a legacy permission system and are generally replaced by Bucket Policies or Access Points.
- Access Points simplify permission management for shared datasets.
- Encryption can protect data both while it is being transmitted and while it is stored.
- Versioning and MFA Delete provide additional protection against accidental or malicious deletion.

#### Repository Updates

- Added documentation covering Amazon S3 security features.
- Added notes explaining S3 Block Public Access and ACLs.
- Expanded the security documentation with access management and encryption concepts.

## 2026-07-31 | Session 12

### Amazon S3 — ACLs and Object Ownership

#### Objectives

* Understand how Access Control Lists (ACLs) work in Amazon S3.
* Learn how bucket ownership affects uploaded objects.
* Explore legacy cross-account upload workflows.

#### Topics Covered

* S3 Access Control Lists (ACLs)
* Bucket Ownership Controls
* `BucketOwnerPreferred`
* Block Public Access and ACL interaction
* Cross-account object uploads
* ACL policy files
* Legacy access management patterns

#### Commands Practiced

```bash
aws s3api create-bucket
aws s3api put-public-access-block
aws s3api get-public-access-block
aws s3api put-bucket-ownership-controls
aws s3api put-bucket-acl
aws s3 cp
aws s3 ls
aws s3 rm
aws s3 rb
```

#### Key Takeaways

* ACLs are a legacy feature that provides only basic permission management.
* Block Public Access settings can override or ignore public ACLs.
* Bucket Ownership Controls help determine which AWS account owns uploaded objects.
* `BucketOwnerPreferred` is commonly used when accepting uploads from another AWS account.
* Bucket Policies and IAM Policies are generally preferred over ACLs for new Amazon S3 designs.

#### Repository Updates

* Added ACL cross-account examples.
* Added ownership control documentation.
* Added a sample ACL policy file.
* Expanded the Amazon S3 security documentation with ACL and ownership concepts.

## 2026-07-31 | Session 13

### Amazon S3 — Bucket Policies

#### Objectives

- Understand how Amazon S3 Bucket Policies provide resource-based access control.
- Learn how to grant cross-account access to S3 buckets.
- Explore common policy conditions used to secure S3 resources.

#### Topics Covered

- S3 Bucket Policies
- Resource-based policies
- IAM principals
- Cross-account access
- Bucket policy JSON documents
- IP address restrictions
- Object tag conditions

#### Commands Practiced

```bash
aws s3 mb s3://bucket-policy-example-ab-5235

aws s3api put-bucket-policy \
  --bucket bucket-policy-example-ab-5235 \
  --policy file://policy.json

touch bootcamp.txt

aws s3 cp bootcamp.txt s3://bucket-policy-example-ab-5235

aws s3 ls s3://bucket-policy-example-ab-5235

aws s3 rm s3://bucket-policy-example-ab-5235/bootcamp.txt

aws s3 rb s3://bucket-policy-example-ab-5235
```

#### Key Takeaways

- Bucket Policies are JSON-based resource policies attached directly to an S3 bucket.
- Unlike IAM policies, Bucket Policies are evaluated as part of the bucket itself.
- Bucket Policies can grant access to AWS accounts, IAM users, IAM roles, and AWS services.
- Conditions such as source IP addresses and object tags can be used to implement fine-grained access control.
- Bucket Policies are the recommended mechanism for granting cross-account access instead of using legacy ACLs.

#### Repository Updates

- Added a Bucket Policies section to the Amazon S3 documentation.
- Added AWS CLI examples for creating and applying Bucket Policies.
- Added a sample `policy.json` file.
- Expanded the repository's Amazon S3 security documentation.

## 2026-07-30 | Session 14

### Amazon S3 — Bucket Policies, Access Grants, and Access Analyzer

#### Objectives

- Compare Amazon S3 Bucket Policies with IAM Policies.
- Learn how Amazon S3 Access Grants simplify data access.
- Understand how IAM Access Analyzer for S3 identifies unintended public access.

#### Topics Covered

- S3 Bucket Policies
- IAM Policies
- Bucket Policies vs IAM Policies
- Amazon S3 Access Grants
- IAM Identity Center integration
- Temporary credentials
- IAM Access Analyzer for S3

#### Commands Practiced

```bash
aws s3api put-bucket-policy \
  --bucket bucket-policy-example-ab-5235 \
  --policy file://policy.json

  ---

## 2026-07-31 | Session 15

### Amazon S3 — Network Privacy and Cross-Origin Resource Sharing (CORS)

#### Objectives

- Understand how Amazon S3 keeps network traffic private.
- Learn the differences between AWS PrivateLink and VPC Gateway Endpoints.
- Explore how Cross-Origin Resource Sharing (CORS) works with Amazon S3 static websites.

#### Topics Covered

- Internetwork traffic privacy
- AWS PrivateLink
- VPC Gateway Endpoints
- Cross-account connectivity
- VPC Endpoint Policies
- Cross-Origin Resource Sharing (CORS)
- CORS request and response headers
- Amazon S3 CORS configuration
- Static website hosting
- Bucket website configuration

#### Commands Practiced

```bash
aws s3 mb s3://cors-fun-ab-36252

aws s3api put-public-access-block \
  --bucket cors-fun-ab-36252 \
  --public-access-block-configuration \
  "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

aws s3api put-bucket-policy \
  --bucket cors-fun-ab-36252 \
  --policy file://bucket-policy.json

aws s3api put-bucket-website \
  --bucket cors-fun-ab-36252 \
  --website-configuration file://website.json

aws s3 cp index.html s3://cors-fun-ab-36252

aws s3 mb s3://cors-fun2-ab-36252

aws s3api put-public-access-block \
  --bucket cors-fun2-ab-36252 \
  --public-access-block-configuration \
  "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

aws s3api put-bucket-policy \
  --bucket cors-fun2-ab-36252 \
  --policy file://bucket-policy.json

aws s3api put-bucket-website \
  --bucket cors-fun2-ab-36252 \
  --website-configuration file://website.json

aws s3 cp index.html s3://cors-fun2-ab-36252

aws s3 cp hello.js s3://cors-fun2-ab-36252

aws s3api put-bucket-cors \
  --bucket cors-fun-ab-36252 \
  --cors-configuration file://cors.json
```

#### Key Takeaways

- AWS PrivateLink provides private access to Amazon S3 through Interface Endpoints and supports cross-account connectivity, fine-grained endpoint policies, and private communication without traversing the public internet.
- VPC Gateway Endpoints provide private connectivity between a VPC and Amazon S3 without additional cost but do not support cross-account access or endpoint policies.
- Cross-Origin Resource Sharing (CORS) controls which external websites are allowed to access resources stored in an Amazon S3 bucket.
- Amazon S3 stores CORS rules as JSON or XML, although the AWS Management Console supports JSON configuration.
- Allowing every origin (`*`) is generally discouraged because it weakens the protection that CORS is designed to provide.
- Static website hosting can be combined with bucket policies and CORS configuration to securely serve web applications from Amazon S3.

#### Repository Updates

- Added examples demonstrating AWS PrivateLink and VPC Gateway Endpoint concepts.
- Added Amazon S3 static website hosting examples.
- Added bucket policy, website configuration, and CORS configuration examples.
- Expanded the Amazon S3 documentation with networking and cross-origin security concepts.

---
## 2026-07-30 | Session 16

### Amazon S3 — Encryption Overview

#### Objectives

- Understand how Amazon S3 protects data using encryption.
- Compare encryption in transit with encryption at rest.
- Learn the different server-side encryption options available in Amazon S3.

#### Topics Covered

- Encryption in Transit
- TLS and SSL
- Encryption at Rest
- Server-Side Encryption (SSE)
- SSE-S3
- SSE-KMS
- SSE-C
- DSSE-KMS
- Client-Side Encryption (CSE)

#### Key Takeaways

- Encryption in transit protects data while it travels across networks using TLS.
- Encryption at rest protects stored data after it has been written to Amazon S3.
- Server-Side Encryption is automatically enabled for all newly uploaded S3 objects.
- SSE-S3 uses Amazon-managed encryption keys and is enabled by default.
- SSE-KMS uses AWS KMS customer-managed keys, providing additional access control, auditing, and compliance capabilities.
- SSE-C allows customers to provide their own encryption keys, which Amazon S3 never stores permanently.
- DSSE-KMS provides dual-layer encryption for workloads requiring stronger security controls.
- Server-side encryption encrypts object data but does not encrypt object metadata.

#### Repository Updates

- Added documentation covering Amazon S3 encryption concepts.
- Expanded notes comparing the available encryption methods.
- Documented security considerations for protecting data both in transit and at rest.

## 2026-07-30 | Session 17

### Amazon S3 — Server-Side Encryption Hands-on

#### Objectives

- Practice uploading encrypted objects to Amazon S3.
- Compare different server-side encryption methods.
- Understand the requirements for SSE-S3, SSE-KMS, and SSE-C.

#### Topics Covered

- SSE-S3
- SSE-KMS
- SSE-C
- Customer-managed encryption keys
- KMS integration
- Encryption key validation

#### Commands Practiced

```bash
aws s3 mb s3://encryption-fun-ab-135

echo "Hello World" > hello.txt

aws s3 cp hello.txt s3://encryption-fun-ab-135

aws s3api put-object \
  --bucket encryption-fun-ab-135 \
  --key hello.txt \
  --body hello.txt \
  --server-side-encryption aws:kms \
  --ssekms-key-id <kms-key-id>

openssl rand -out ssec.key 32

aws s3 cp hello.txt s3://encryption-fun-ab-135/hello.txt \
  --sse-c AES256 \
  --sse-c-key fileb://ssec.key

aws s3 cp s3://encryption-fun-ab-135/hello.txt hello.txt \
  --sse-c AES256 \
  --sse-c-key fileb://ssec.key

## 2026-07-30 | Session 18

### Amazon S3 — Encryption

#### Objectives

- Understand advanced Amazon S3 encryption options.
- Learn how S3 Bucket Keys reduce AWS KMS costs.
- Explore client-side encryption using the AWS SDK for Ruby.

#### Topics Covered

- SSE-KMS
- S3 Bucket Keys
- AWS KMS request optimization
- Client-Side Encryption
- AWS SDK for Ruby Encryption Client

#### Commands Practiced

```bash
aws s3api put-bucket-encryption \
  --bucket mybucket \
  --server-side-encryption-configuration ...

aws s3 mb s3://encrypt-client-fun-ab-634232

bundle exec ruby encrypt.rb

aws s3 rm s3://encrypt-client-fun-ab-634232/hello.txt
aws s3 rb s3://encrypt-client-fun-ab-634232

## 2026-07-30 | Session 19

### Amazon S3 — Data Management

#### Objectives

- Understand how Amazon S3 maintains data consistency.
- Learn object replication strategies for high availability and disaster recovery.
- Explore versioning, lifecycle management, and transfer acceleration.

#### Topics Covered

- Strong consistency
- Object replication
- Cross-Region Replication (CRR)
- Same-Region Replication (SRR)
- Bi-Directional Replication
- Batch Replication
- S3 Versioning
- Lifecycle Rules
- Transfer Acceleration

#### Key Takeaways

- Amazon S3 provides strong consistency for all read, write, list, and delete operations.
- Replication improves availability, disaster recovery, and data distribution across Regions or within the same Region.
- Versioning protects against accidental object deletion and overwrites while integrating with Lifecycle rules.
- Lifecycle policies automate storage transitions, archival, and object expiration to reduce storage costs.
- Transfer Acceleration uses Amazon CloudFront edge locations and the AWS Global Backbone to speed up uploads from geographically distant users.

#### Repository Updates

- Added documentation covering S3 consistency, replication, versioning, lifecycle management, and transfer acceleration.
- Added notes describing replication strategies and lifecycle rule actions.
## 2026-07-31 | Session 20

### Amazon S3 — Advanced Access and Data Transfer

#### Objectives

- Learn advanced methods for transferring and accessing Amazon S3 data.
- Explore features that simplify large-scale access management.
- Understand services that improve performance and flexibility.

#### Topics Covered

- S3 Transfer Acceleration
- Presigned URLs
- S3 Access Points
- Multi-Region Access Points
- S3 Object Lambda
- Mountpoint for Amazon S3

#### Commands Practiced

```bash
aws s3api put-bucket-accelerate-configuration

aws configure set s3.addressing_style virtual

aws configure set default.s3.use_accelerate_endpoint true

aws s3 presign

mount-s3

umount

## 2026-07-31 | Session 21

### Amazon S3 — Archive Storage and Requester Pays

#### Objectives

- Learn Amazon S3 archive storage options.
- Understand the difference between archive storage classes and Intelligent-Tiering archive access tiers.
- Explore the Requester Pays feature and its billing model.

#### Topics Covered

- Archive Storage Classes
- Archive Access Tiers
- Glacier Flexible Retrieval
- Glacier Deep Archive
- Intelligent-Tiering Archive Access
- Intelligent-Tiering Deep Archive
- Requester Pays
- Requester Pays authentication
- Requester Pays troubleshooting

#### Commands Practiced

```bash
aws s3 cp s3://bucket-name/object local/path/object \
  --request-payer requester
```

#### Key Takeaways

- Archive Storage Classes require manually moving objects into archive storage.
- Intelligent-Tiering Archive Access automatically moves objects based on usage patterns.
- Glacier Flexible Retrieval provides retrieval in minutes to hours, while Glacier Deep Archive offers the lowest storage cost with much longer retrieval times.
- Requester Pays transfers request and data transfer charges from the bucket owner to the requester.
- Requesters must authenticate and include the Requester Pays parameter or header in every request.

#### Repository Updates

- Added documentation covering Amazon S3 archive storage.
- Documented Requester Pays configuration and billing behavior.
- Added troubleshooting notes and request examples.
## 2026-07-31 | Session 22

### Amazon S3 — Archive Storage, Requester Pays, and Batch Operations

#### Objectives

- Understand S3 archive storage options and access tiers.
- Learn how Requester Pays changes S3 cost responsibility.
- Understand how S3 Batch Operations performs large-scale object operations.

#### Topics Covered

- S3 Archive Storage Classes
- S3 Intelligent-Tiering Archive Access Tiers
- S3 Requester Pays
- Requester Pays permissions
- Requester Pays request headers
- AWS Marketplace for S3
- S3 Batch Operations
- Batch Operations operation types
- Batch Operations manifests
- S3 Inventory reports
- Batch Operations completion reports
- Third-party services for Amazon S3

#### Key Takeaways

- Archive Storage Classes are useful when access patterns are known and data can be manually moved to lower-cost archival storage.
- Intelligent-Tiering Archive Access Tiers automatically move objects to archival tiers based on their access patterns.
- S3 Requester Pays allows the requester to pay for certain request and data-transfer costs instead of the bucket owner.
- Requests to Requester Pays buckets must be authenticated and include the required requester-pays parameter.
- S3 Batch Operations is designed to perform operations across very large numbers of S3 objects.
- Batch Operations can copy objects, invoke Lambda functions, replace object tags, replace ACLs, restore archived objects, and manage Object Lock retention and legal holds.
- Batch Operations uses a manifest to identify the objects that should be processed.
- S3 Inventory reports can be used as manifests for Batch Operations.
- Completion reports provide information about the results of a Batch Operations job.

#### Repository Updates

- Expanded Amazon S3 documentation with archive storage concepts.
- Added documentation for S3 Requester Pays.
- Added notes about AWS Marketplace integrations with S3.
- Documented S3 Batch Operations and supported operation types.
- Documented Batch Operations manifests and completion reports.