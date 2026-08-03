# Notes

## AWS PrivateLink

- Uses Interface Endpoints.
- Keeps traffic on the AWS network.
- Supports cross-account access.
- Supports endpoint policies.
- Additional cost applies.

## Gateway Endpoint

- Works only with Amazon S3 and DynamoDB.
- Free to use.
- Cannot access resources across AWS accounts.

## CORS

- Controls which origins may access S3 resources.
- Configured using JSON or XML.
- The AWS Console accepts JSON.
- Avoid wildcard origins (`*`) in production.

## Static Website Hosting

- Requires website configuration.
- Usually requires a bucket policy allowing public read access.
- CORS is required when the website accesses resources from another origin.