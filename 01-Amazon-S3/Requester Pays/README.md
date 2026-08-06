# Amazon S3 Requester Pays

Requester Pays allows the requester instead of the bucket owner to pay request and data transfer costs.

## Benefits

- Share datasets without paying download costs
- Useful for research datasets
- Client-owned storage
- Collaborative projects
- Content distribution

The bucket owner still pays for storing the data.

## CLI Example

```bash
aws s3 cp \
s3://bucket-name/object \
local/path/object \
--request-payer requester
```

## REST Header

```text
x-amz-request-payer: requester
```

## Ruby SDK Example

```ruby
resp = s3_client.get_object(
  bucket: bucket,
  key: object_key,
  request_payer: 'requester'
)
```

## Troubleshooting

403 Forbidden occurs when:

- request-payer header is missing
- authentication fails
- anonymous requests are used
- SOAP requests are made

## Notes

- Anonymous access is not supported.
- Every request must be authenticated.
- IAM policies commonly use the `s3:RequestPayer` condition.