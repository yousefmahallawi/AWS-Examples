# Checksum Commands

## Create a bucket

```bash
aws s3 mb s3://checksums-example-bucket
```

## Create a sample file

```bash
echo "Hello Mars" > myfile.txt
```

## Generate an MD5 checksum

```bash
md5sum myfile.txt
```

## Upload the object

```bash
aws s3 cp myfile.txt s3://checksums-example-bucket
```

## View object metadata

```bash
aws s3api head-object \
    --bucket checksums-example-bucket \
    --key myfile.txt
```

## Upload using CRC32

```bash
aws s3api put-object \
    --bucket checksums-example-bucket \
    --key myfilecrc32.txt \
    --body myfile.txt \
    --checksum-algorithm CRC32
```