# S3 ACL Commands

## Create a bucket

```bash
aws s3api create-bucket \
  --bucket acl-example-ab-5235 \
  --region us-east-1
```

## Disable ACL-related Block Public Access settings

```bash
aws s3api put-public-access-block \
  --bucket acl-example-ab-5235 \
  --public-access-block-configuration \
    "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

## Verify Block Public Access configuration

```bash
aws s3api get-public-access-block \
  --bucket acl-example-ab-5235
```

## Configure bucket ownership

```bash
aws s3api put-bucket-ownership-controls \
  --bucket acl-example-ab-5235 \
  --ownership-controls "Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Apply a bucket ACL from a JSON policy file

```bash
aws s3api put-bucket-acl \
  --bucket acl-example-ab-5235 \
  --access-control-policy file://policy.json
```

## Upload an object

```bash
touch bootcamp.txt

aws s3 cp bootcamp.txt s3://acl-example-ab-5235
```

## List objects

```bash
aws s3 ls s3://acl-example-ab-5235
```

## Cleanup

```bash
aws s3 rm s3://acl-example-ab-5235/bootcamp.txt

aws s3 rb s3://acl-example-ab-5235
```
