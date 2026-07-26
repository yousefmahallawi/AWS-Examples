# Amazon S3 Learning Log

## Session 1

### Hands-on Practice

- Created an S3 bucket.
- Uploaded a file to the bucket.
- Deleted an object from the bucket.
- Learned that a bucket must be empty before it can be deleted.
- Used recursive deletion to remove all objects before deleting the bucket.
- Created a bucket using `aws s3api`.
- Filtered JSON output using the `--query` option.
- Learned how to display CLI output in JSON, Table, and YAML formats.

### Key Takeaways

- `aws s3` provides simple, high-level commands for common S3 operations.
- `aws s3api` provides low-level API commands with advanced capabilities.
- The `--query` option filters JSON output using JMESPath.
- Different output formats (`json`, `table`, `yaml`) make AWS CLI responses easier to read depending on the task.

### Questions to Revisit

- Learn more about JMESPath query syntax.
- Explore additional `s3api` operations.

---

## Session 2

### Hands-on Practice

- Created local files using `touch`.
- Edited files using `nano`.
- Learned basic Linux commands such as `ls` and `ls -la`.
- Uploaded files to Amazon S3 using `put-object`.
- Downloaded an object from S3 using `get-object`.
- Synced a local directory to an S3 bucket using `aws s3 sync`.
- Listed all objects stored in a bucket.
- Used `--query` to display only object names.

### New Concepts

- `aws s3 sync` copies an entire directory while preserving its structure.
- `put-object` uploads a single object and allows additional options such as specifying the content type.
- `get-object` downloads an object from S3 to a local file.
- Every uploaded object receives an **ETag**, which is commonly used to identify the uploaded object's content.
- Objects are stored using the **STANDARD** storage class by default unless another storage class is specified.
- Amazon S3 automatically applied **AES256 server-side encryption** to uploaded objects.
---

## Session 3

### Hands-on Practice

- Learned how to automate AWS CLI commands using Bash scripts.
- Created a reusable script for creating S3 buckets.
- Passed command-line arguments to a Bash script.
- Made scripts executable using `chmod`.
- Executed scripts directly from the terminal.

### New Concepts

- A Bash script can automate repetitive AWS CLI tasks.
- `#!/usr/bin/env bash` specifies that the script should be executed using Bash.
- `$1` represents the first argument passed to the script.
- Variables can be stored and reused inside a script.
- `chmod u+x` grants execute permission to a script.
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
- `delete-objects` removes multiple objects in one request instead of deleting them individually.
- Scripts become more useful as they include validation, automation, and reusable logic.