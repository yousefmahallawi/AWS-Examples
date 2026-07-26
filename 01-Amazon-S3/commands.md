# AWS CLI Commands

## Create a bucket

```bash
aws s3 mb s3://bucket-name
```

## Upload a file

```bash
aws s3 cp file.txt s3://bucket-name
```

## List bucket contents

```bash
aws s3 ls s3://bucket-name
```

## Delete an object

```bash
aws s3 rm s3://bucket-name/file.txt
```

## Delete all objects in a bucket

```bash
aws s3 rm s3://bucket-name --recursive
```

## Delete a bucket

```bash
aws s3 rb s3://bucket-name
```

## Create a bucket using S3 API

```bash
aws s3api create-bucket --bucket my-example-bucket-ab2 --region us-east-1
```

## List buckets

```bash
aws s3api list-buckets
```

## Filter bucket by name

```bash
aws s3api list-buckets --query "Buckets[?Name=='my-example-bucket-ab2']"
```

## Display output as a table

```bash
aws s3api list-buckets --output table
```

## Display output as YAML

```bash
aws s3api list-buckets --output yaml
```
## Create a local file

```bash
touch hello.txt
```

## List files

```bash
ls
```

## List files with details

```bash
ls -la
```

## Edit a file

```bash
nano hello.txt
```

## Sync a local directory to S3

```bash
aws s3 sync images/ s3://my-example-bucket-ab2
```

## Download an object from S3

```bash
aws s3api get-object \
    --bucket my-example-bucket-ab2 \
    --key hello.txt \
    world.txt
```

## Upload an object using S3 API

```bash
aws s3api put-object \
    --bucket my-example-bucket-ab2 \
    --key world.txt \
    --content-type text/plain \
    --body world.txt
```

## Upload an HTML file

```bash
touch index.html
```

```bash
nano index.html
```

```bash
aws s3api put-object \
    --bucket my-example-bucket-ab2 \
    --key index.html \
    --body index.html
```

## List objects in a bucket

```bash
aws s3api list-objects \
    --bucket my-example-bucket-ab2
```

## List only object names

```bash
aws s3api list-objects \
    --bucket my-example-bucket-ab2 \
    --query "Contents[].Key"
```
## Locate Bash

```bash
whereis bash
```

## Display files

```bash
ls -la
```

## Make a script executable

```bash
chmod u+x s3/bash-scripts/*
```

## Run a Bash script

```bash
./s3/bash-scripts/create-bucket my-new-bucket
```
## Download the newest bucket name

```bash
aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[0] | .Name'
```

## Upload an object

```bash
aws s3api put-object \
    --bucket my-example-bucket-ab2 \
    --body hello.txt \
    --key hello.txt
```

## Delete a bucket

```bash
aws s3api delete-bucket \
    --bucket my-example-bucket-ab2
```

## Synchronize a directory

```bash
aws s3 sync local-directory/ s3://my-example-bucket-ab2/files
```

## Delete multiple objects

```bash
aws s3api delete-objects \
    --bucket my-example-bucket-ab2 \
    --delete file:///tmp/delete_objects.json
```