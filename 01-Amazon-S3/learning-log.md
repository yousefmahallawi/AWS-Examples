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