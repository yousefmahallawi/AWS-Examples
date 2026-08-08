# Amazon S3

This folder documents my hands-on practice while learning **Amazon S3** for the **AWS Certified Solutions Architect – Associate (SAA-C03)** certification.

The documentation includes AWS CLI practice, automation, security, encryption, storage classes, data management, transfer features, analytics, and Infrastructure as Code.

---

## Topics Covered

### S3 Fundamentals

- S3 Buckets
- Object Management
- Object Prefixes
- Object Metadata
- S3 Bucket URIs
- Object Lock
- Data Consistency
- Strong Consistency

---

### AWS CLI

- AWS CLI `aws s3`
- AWS CLI `aws s3api`
- AWS CLI `aws s3control`
- AWS CLI `aws s3outposts`
- JMESPath Queries
- JSON Output
- Table Output
- YAML Output
- S3 Request Styles
- Virtual-Hosted-Style Requests
- Path-Style Requests
- DualStack Endpoints

---

### Linux & Automation

- Bash Scripting
- Script Permissions
- `chmod`
- `jq`
- `touch`
- `nano`
- `ls`
- `ls -la`
- Input Validation
- S3 Automation Scripts
- Directory Synchronization

---

### Development

- AWS SDK for Ruby
- AWS SDK for S3
- Client-Side Encryption using the AWS SDK

---

### Infrastructure as Code

- AWS CloudFormation
- Terraform
- AWS CDK
- Pulumi

---

## Storage Classes

- S3 Standard
- Reduced Redundancy Storage (Legacy)
- S3 Standard-IA
- S3 One Zone-IA
- S3 Express One Zone
- S3 Intelligent-Tiering
- S3 Glacier Instant Retrieval
- S3 Glacier Flexible Retrieval
- S3 Glacier Deep Archive
- S3 Glacier Vault

### Intelligent-Tiering Access Tiers

- Frequent Access Tier
- Infrequent Access Tier
- Archive Instant Access Tier
- Archive Access Tier
- Deep Archive Access Tier

### Archive Storage

- Archive Storage Classes
- Archive Access Tiers
- S3 Glacier Vault vs S3 Glacier Storage Classes

---

## Security & Access Control

- S3 Security Overview
- Block Public Access
- Access Control Lists (ACLs)
- Bucket Policies
- IAM Policies vs Bucket Policies
- S3 Access Points
- Multi-Region Access Points
- Object Lambda Access Points
- S3 Access Grants
- IAM Access Analyzer for S3
- Object Ownership
- AWS PrivateLink for S3
- Gateway Endpoints
- Cross-Origin Resource Sharing (CORS)
- Requester Pays

---

## Encryption & Data Protection

- Encryption in Transit
- Server-Side Encryption (SSE-S3)
- Server-Side Encryption (SSE-KMS)
- Server-Side Encryption with Customer-Provided Keys (SSE-C)
- Dual-Layer Server-Side Encryption (DSSE-KMS)
- S3 Bucket Keys
- Client-Side Encryption
- Object Lock
- Legal Holds
- Retention Periods
- MFA Delete

---

## Data Management & Protection

### Versioning

- S3 Versioning
- Versioned Buckets
- Versioned Suspended Buckets
- Recovering Deleted or Overwritten Objects
- MFA Delete

### Lifecycle Management

- S3 Lifecycle Rules
- Transition Actions
- Expiration Actions
- Current Object Versions
- Noncurrent Object Versions
- Prefix Filters
- Object Tag Filters
- Object Size Filters
- Expired Object Delete Markers
- Incomplete Multipart Uploads

### Object Replication

- Cross-Region Replication (CRR)
- Same-Region Replication (SRR)
- Bi-Directional Replication
- S3 Batch Replication
- Replication Metadata
- Replication Across Storage Classes
- Replication Across AWS Regions
- Object Ownership in Replication

### Batch Operations

- S3 Batch Operations
- Copy Objects
- Invoke AWS Lambda
- Replace Object Tags
- Replace ACLs
- Restore Glacier Objects
- Object Lock Retention
- Object Lock Legal Holds
- Batch Operation Manifests
- CSV Manifests
- S3 Inventory Manifests
- Completion Reports

---

## Data Transfer & Access

### S3 Transfer Acceleration

- Transfer Acceleration
- S3 Accelerate Endpoint
- Virtual-Hosted-Style Requirement
- DualStack Transfer Acceleration
- AWS CLI Transfer Acceleration Configuration

### Presigned URLs

- Generating Presigned URLs
- Temporary Object Access
- URL Expiration
- Presigned URL Components
- AWS Signature Version 4

### Access Points

- S3 Access Points
- Access Point Policies
- Access Point Network Origin
- Internet Access Points
- VPC Access Points
- Access Point Block Public Access

### Multi-Region Access Points

- Global S3 Endpoint
- Routing Requests Across Regions
- Lowest-Latency Routing
- AWS Global Accelerator
- Replication Between Regional Buckets

### Object Lambda

- S3 Object Lambda
- GET Operations
- HEAD Operations
- LIST Operations
- Transforming Object Data
- Lambda Functions with Object Lambda Access Points

### Mountpoint for Amazon S3

- Mounting S3 as a Linux File System
- Basic File-System Operations
- Installing Mountpoint
- Mounting and Unmounting Buckets
- Mountpoint Limitations

---

## Analytics & Application Integration

### S3 Inventory

- Automated Object Inventory
- Daily Inventory
- Weekly Inventory
- CSV Output
- ORC Output
- Parquet Output
- Object Metadata
- Object Size
- Last Modified Date
- Replication Status
- Encryption
- Storage Class
- Object Ownership
- Object Lock Information
- Checksums

### S3 Select

- SQL Queries on S3 Objects
- CSV Objects
- JSON Objects
- Apache Parquet
- GZIP Compression
- BZIP2 Compression
- Server-Side Encrypted Objects
- CLI `select-object-content`

### S3 Event Notifications

- Object Creation Events
- Object Removal Events
- Restore Events
- Replication Events
- Lifecycle Events
- Intelligent-Tiering Events
- Object Tagging Events
- ACL Events
- Amazon SNS
- Amazon SQS
- AWS Lambda
- Amazon EventBridge
- At-Least-Once Delivery

### S3 Storage Class Analysis

- Storage Access Pattern Analysis
- Standard to Standard-IA Recommendations
- Analysis Filters
- Prefix Filters
- Exporting Results to CSV
- Amazon QuickSight Integration
- Analysis Period

### S3 Storage Lens

- Organization-Wide Storage Analysis
- Storage Usage Metrics
- Growing Buckets and Prefixes
- Cost Optimization
- Data Protection
- Access Management
- Performance Analysis
- CSV and Parquet Exports
- Amazon CloudWatch Integration
- Interactive Dashboard

---

## AWS Marketplace for S3

Third-party solutions and AWS services that integrate with Amazon S3, including:

### Storage Backup & Recovery

- Veeam Backup for AWS
- Druva

### Data Integration & Analytics

- ChaosSearch
- Logz.io
- BryteFlow

### Observability & Monitoring

- Datadog
- Splunk
- Dynatrace

### Security & Threat Detection

- Trend Micro Cloud One
- InsightIDR
- Palo Alto Networks VM-Series
- OneLogin

---

## AWS Services Commonly Used with S3

- Amazon FSx for Lustre
- AWS Storage Gateway
- AWS Transfer Family
- AWS DataSync
- Amazon Athena
- AWS CloudTrail
- Amazon CloudWatch
- Amazon GuardDuty
- Amazon Macie
- AWS IAM

---

## Status

🟡 In Progress