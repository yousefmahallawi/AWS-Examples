# Amazon S3 Learning Log

This document summarizes the practical work completed while studying Amazon S3 for the AWS Certified Solutions Architect – Associate (SAA-C03) certification. Each session records the concepts explored, hands-on exercises completed, and the key lessons learned throughout the course.

---

# Session 1

## Hands-on Practice

During this session I became familiar with the basic Amazon S3 workflow by creating buckets, uploading objects, and managing them through both the AWS Management Console and the AWS CLI.

Practical exercises included:

- Creating and deleting S3 buckets.
- Uploading objects to a bucket.
- Deleting individual objects.
- Emptying a bucket before deleting it.
- Creating buckets with `aws s3api`.
- Filtering CLI output using JMESPath queries.
- Displaying AWS CLI output in JSON, Table, and YAML formats.

## Key Takeaways

- `aws s3` provides high-level commands for common file operations.
- `aws s3api` exposes the complete Amazon S3 API and provides finer control over S3 resources.
- JMESPath queries simplify filtering large JSON responses returned by the AWS CLI.
- Different output formats improve readability depending on the task being performed.

## Questions to Revisit

- Learn more advanced JMESPath query syntax.
- Explore additional `aws s3api` operations.

---

# Session 2

## Hands-on Practice

This session focused on working with Amazon S3 objects from the command line while becoming more comfortable with the Linux environment provided by AWS CloudShell.

Practical exercises included:

- Creating local files using `touch`.
- Editing files with `nano`.
- Practicing Linux commands such as `ls` and `ls -la`.
- Uploading objects using `put-object`.
- Downloading objects using `get-object`.
- Synchronizing local directories with Amazon S3.
- Listing bucket contents.
- Filtering object names with `--query`.

## New Concepts

- `aws s3 sync` uploads only new or modified files while preserving directory structure.
- `put-object` uploads a single object and supports additional configuration such as metadata and content type.
- `get-object` downloads an S3 object to the local machine.
- Every uploaded object receives an **ETag**, which identifies a specific version of the object's content. Depending on the upload method and encryption settings, the ETag is not always an MD5 hash.
- Objects are stored in the **STANDARD** storage class unless another storage class is specified.
- Amazon S3 automatically applies **server-side encryption (SSE-S3)** using **AES256** by default.

---

# Session 3

## Hands-on Practice

This session introduced Bash scripting as a way to automate repetitive AWS CLI tasks and build reusable command-line utilities.

Practical exercises included:

- Creating reusable Bash scripts for Amazon S3.
- Passing command-line arguments to scripts.
- Making scripts executable with `chmod`.
- Executing scripts directly from the terminal.
- Automating bucket creation through reusable scripts.

## New Concepts

- Bash scripts help automate repetitive AWS CLI operations.
- The shebang

```bash
#!/usr/bin/env bash
```

specifies the interpreter used to execute the script.

- `$1` represents the first command-line argument passed to a script.
- Variables allow values to be stored and reused throughout a script.
- `chmod u+x` grants execute permission to a script.
- Reusable scripts improve consistency while reducing manual work.
---

## Session 4

### Hands-on Practice

- Automated additional S3 operations using Bash scripts.
- Created reusable scripts for uploading objects, deleting buckets, synchronizing directories, and deleting multiple objects.
- Used `jq` to process JSON output returned by the AWS CLI.
- Learned how to identify the newest S3 bucket by sorting bucket creation dates.
- Practiced synchronizing a local directory with an S3 bucket.
- Learned how to delete multiple objects in a single API request.

### New Concepts

- `jq` is a command-line tool used to filter and manipulate JSON output.
- Bash scripts can combine Linux commands with AWS CLI commands to automate complete workflows.
- `aws s3 sync` uploads only changed files, making it efficient for synchronizing directories.
- `delete-objects` removes multiple objects in a single API request instead of deleting them individually.
- Reusable scripts become more valuable when they include input validation and error handling.

---

## Session 5

### Hands-on Practice

- Explored the AWS SDK for Ruby.
- Learned how applications interact with Amazon S3 programmatically.
- Created an Amazon S3 client using the AWS SDK.
- Used environment variables to configure AWS resources.
- Generated random files and uploaded them to an S3 bucket.
- Introduced Infrastructure as Code (IaC) using AWS CloudFormation.
- Learned how to deploy and delete CloudFormation stacks from the AWS CLI.

### Key Takeaways

- The AWS SDK allows applications to interact directly with AWS services through code.
- Environment variables separate configuration from application logic.
- CloudFormation manages infrastructure as code, making deployments repeatable and version-controlled.
- CloudFormation deployments are idempotent, meaning existing resources are updated instead of duplicated whenever possible.
- Infrastructure can be deployed, updated, and removed without manually creating resources in the AWS Management Console.

---

## Session 6

### Hands-on Practice

- Explored multiple Infrastructure as Code (IaC) tools.
- Created an Amazon S3 bucket using Terraform.
- Created an Amazon S3 bucket using AWS CDK with TypeScript.
- Created an Amazon S3 bucket using Pulumi with Python.
- Compared different approaches to provisioning the same AWS infrastructure.

### Key Takeaways

- CloudFormation is AWS's native Infrastructure as Code service.
- Terraform is cloud-agnostic and can manage infrastructure across multiple cloud providers.
- AWS CDK allows infrastructure to be defined using programming languages such as TypeScript, Python, Java, and C#.
- Pulumi also provisions cloud infrastructure using general-purpose programming languages.
- Although the syntax differs, all of these tools can be used to create and manage the same AWS resources.

---

## Session 7

### Hands-on Practice

- Explored how Amazon S3 validates uploaded objects using checksums.
- Compared MD5 hashes with Amazon S3 ETags.
- Retrieved object metadata using the `head-object` API.
- Uploaded an object using the `CRC32` checksum algorithm.
- Observed how Terraform detects file changes before updating S3 objects.
- Learned how Amazon S3 organizes objects using prefixes instead of traditional folders.
- Examined both system-defined metadata and user-defined metadata.

### New Concepts

- Checksums verify the integrity of uploaded and downloaded objects.
- An ETag is commonly used to identify a specific version of an object's contents, but it is not always equal to an MD5 hash.
- Object prefixes simulate folders in the AWS Management Console but are simply part of the object key.
- The complete object key, including prefixes, can be up to **1,024 bytes** long.
- System metadata is managed by AWS, while user-defined metadata is stored using the `x-amz-meta-` prefix.
- Updating metadata changes information about an object without modifying the object's contents.

### Key Takeaways

- Amazon S3 stores objects in a flat namespace rather than a hierarchical file system.
- Prefixes provide logical organization without creating actual directories.
- Metadata makes objects easier to categorize and process without changing the underlying file.
- Understanding ETags, checksums, prefixes, and metadata is important when building applications that interact with Amazon S3.

## Session 8

### Hands-on Practice

- Explored Amazon S3 Object Lock and learned how it protects objects from being deleted or overwritten.
- Compared retention periods and legal holds as two methods of protecting S3 objects.
- Used S3 bucket URIs with AWS CLI commands.
- Learned the differences between `aws s3`, `aws s3api`, `aws s3control`, and `aws s3outposts`.
- Compared virtual-hosted and path-style S3 requests.
- Studied standard and dualstack S3 endpoints.
- Reviewed the available Amazon S3 storage classes and their common use cases.

### Key Takeaways

- Object Lock uses the Write Once Read Many (WORM) model and must be enabled when the bucket is created.
- S3 bucket URIs are commonly used when working with high-level AWS CLI commands.
- `aws s3` provides simplified commands, while `aws s3api` exposes low-level API operations. `aws s3control` and `aws s3outposts` are used for specialized S3 management tasks.
- Virtual-hosted requests are the preferred request style for Amazon S3.
- Dualstack endpoints support both IPv4 and IPv6 connectivity.
- Amazon S3 offers multiple storage classes that balance cost, durability, availability, and retrieval speed for different workloads.
### Hands-on Practice

- Compared Amazon S3 Standard, Standard-IA, One Zone-IA, Express One Zone, and Reduced Redundancy Storage (RRS).
- Created an S3 bucket and uploaded an object using the `STANDARD_IA` storage class.
- Learned the pricing differences between storage classes, including retrieval fees and minimum storage duration charges.
- Explored the characteristics and use cases of S3 Express One Zone.
- Learned why Reduced Redundancy Storage (RRS) is considered a legacy storage class and is no longer recommended.
- Reviewed the relationship between Amazon S3 Glacier and S3 Glacier Deep Archive.

### Commands Practiced

```bash
aws s3 mb s3://class-fun-ab-6346

echo "Hello World" > hello.txt

aws s3 cp hello.txt s3://class-fun-ab-6346 --storage-class STANDARD_IA

aws s3 rm s3://class-fun-ab-6346/hello.txt

aws s3 rb s3://class-fun-ab-6346

## Session 9

### Hands-on Practice

- Compared the characteristics of Amazon S3 storage classes.
- Learned when to use Standard, Standard-IA, One Zone-IA, Express One Zone, Intelligent-Tiering, and Glacier storage classes.
- Explored the retrieval options for Glacier Flexible Retrieval and Glacier Deep Archive.
- Learned how Intelligent-Tiering automatically moves objects between storage tiers based on access patterns.
- Uploaded objects to different storage classes using the AWS CLI with the `--storage-class` option.
- Compared storage classes based on durability, availability, retrieval latency, retrieval fees, and minimum storage duration.

### Key Takeaways

- Amazon S3 provides multiple storage classes optimized for different access patterns, performance requirements, and costs.
- S3 Standard is the default storage class for frequently accessed data.
- Intelligent-Tiering automatically moves objects between access tiers but charges a small monitoring fee.
- Standard-IA and One Zone-IA reduce storage costs but include retrieval fees and minimum storage duration charges.
- Glacier Instant Retrieval provides millisecond access for rarely accessed data.
- Glacier Flexible Retrieval offers Expedited, Standard, and Bulk retrieval options for archived data.
- Glacier Deep Archive provides the lowest storage cost but has retrieval times measured in hours.
- The legacy Glacier Vault service is different from the Glacier storage classes integrated into Amazon S3.

### Questions to Revisit

- Compare the pricing and minimum storage duration for every S3 storage class.
- Practice selecting the most appropriate storage class for different real-world scenarios.
## Session 10

### Hands-on Practice

- Learned the security features available in Amazon S3.
- Compared Bucket Policies with Access Control Lists (ACLs).
- Studied Amazon S3 Block Public Access and its four protection settings.
- Explored Access Points and Access Grants for managing access at scale.
- Reviewed encryption options including in-transit, server-side, and client-side encryption.
- Learned how Versioning, MFA Delete, Object Ownership, and Object Tags improve data protection.

### Key Takeaways

- S3 Block Public Access helps prevent the most common S3 security misconfiguration by blocking unintended public access.
- Bucket Policies provide flexible, JSON-based permissions and are preferred over ACLs.
- ACLs are a legacy feature with limited capabilities and should generally be avoided in new designs.
- Access Points simplify permission management for shared datasets.
- Amazon S3 supports multiple encryption methods to secure data both at rest and in transit.
- Versioning and MFA Delete help protect objects from accidental or unauthorized deletion.

### Questions to Revisit

- Practice writing Bucket Policies.
- Compare IAM Policies, Bucket Policies, ACLs, and Access Points to understand when each should be used.
## Session 11

### Hands-on Practice

- Created an Amazon S3 bucket for testing Access Control Lists (ACLs).
- Modified Block Public Access settings to allow ACL evaluation.
- Configured bucket ownership using `BucketOwnerPreferred`.
- Applied a bucket ACL using a JSON access control policy file.
- Simulated cross-account object uploads and verified bucket contents.
-Cleaned up the bucket and uploaded objects after testing.

### Key Takeaways

* ACLs are a legacy mechanism for granting basic read and write permissions to other AWS accounts.
* Block Public Access can prevent ACLs from taking effect if the ACL-related settings remain enabled.
* `BucketOwnerPreferred` helps ensure that the bucket owner becomes the owner of uploaded objects when the uploader grants the appropriate ACL.
* ACLs have significant limitations compared with Bucket Policies and IAM Policies because they cannot express conditional logic or explicit deny rules.
* Modern Amazon S3 architectures generally prefer Bucket Policies, IAM Policies, or Access Points instead of ACLs.

### Questions to Revisit

* Review the differences between ACLs, Bucket Policies, and IAM Policies.
* Practice identifying scenarios where ACLs might still appear in legacy environments.

## Session 12

### Hands-on Practice

- Created an Amazon S3 bucket.
- Applied a Bucket Policy using the AWS CLI.
- Learned how Bucket Policies grant access to other AWS accounts and IAM principals.
- Tested bucket access from another AWS account.
- Explored how Bucket Policies can restrict access based on IP addresses and object tags.
- Removed the uploaded object and deleted the bucket.

### Key Takeaways

- Bucket Policies are JSON-based resource policies attached directly to S3 buckets.
- They provide fine-grained access control and are the preferred alternative to ACLs.
- Bucket Policies can grant permissions to AWS accounts, IAM users, IAM roles, and AWS services.
- Conditions such as IP addresses and object tags can be used to further restrict access.

### Questions to Revisit

- Practice writing Bucket Policy conditions.
- Compare Bucket Policies, IAM Policies, Access Points, and ACLs.

## Session 13

### Hands-on Practice

- Compared Amazon S3 Bucket Policies with IAM Policies.
- Learned when Bucket Policies are preferred over IAM Policies.
- Explored Amazon S3 Access Grants.
- Learned how Access Grants integrates with directory services such as IAM Identity Center and Active Directory.
- Studied how temporary credentials are issued for S3 access.
- Explored IAM Access Analyzer for S3 and how it detects publicly accessible buckets.

### New Concepts

- Bucket Policies are resource-based policies that apply directly to an S3 bucket.
- IAM Policies are identity-based policies that can grant permissions across multiple AWS services.
- Bucket Policies support multiple principals, making them useful for cross-account access.
- Amazon S3 Access Grants simplifies access to datasets stored in S3 by mapping external identities to specific locations.
- Access Grants issues temporary credentials with READ, WRITE, or READWRITE permissions.
- IAM Access Analyzer for S3 continuously analyzes bucket policies and reports buckets that are publicly accessible or shared with other AWS accounts.
- Even if a Bucket Policy allows public access, Amazon S3 Block Public Access can still prevent that access when enabled.

## Session 14

### Hands-on Practice

- Learned how Amazon S3 traffic can remain private using AWS networking services.
- Compared AWS PrivateLink with VPC Gateway Endpoints.
- Created Amazon S3 static websites.
- Configured bucket policies for website hosting.
- Enabled static website hosting on S3 buckets.
- Applied a CORS configuration to an Amazon S3 bucket.
- Uploaded website files and JavaScript resources.
- Tested browser access between different origins.

### New Concepts

- AWS PrivateLink uses Interface Endpoints to privately connect VPCs to AWS services and supports cross-account access.
- VPC Gateway Endpoints provide free private access to Amazon S3 and DynamoDB but only within the same AWS account.
- Cross-Origin Resource Sharing (CORS) uses HTTP headers to control which websites are allowed to access resources from another origin.
- Amazon S3 supports CORS rules in JSON or XML format.
- Static website hosting often requires a properly configured CORS policy when resources are loaded from different domains.
- Using specific allowed origins is more secure than allowing all origins with the wildcard (`*`).