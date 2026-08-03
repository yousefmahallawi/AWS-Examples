# Amazon S3 - Network Privacy & CORS

## Overview

This lesson explores how Amazon S3 securely serves web applications and protects network traffic.

Topics covered include:

- AWS PrivateLink
- VPC Gateway Endpoints
- Cross-Origin Resource Sharing (CORS)
- Static Website Hosting
- Bucket Policies
- Website Configuration

## Files

- `bucket-policy.json` – Public read policy for the website bucket.
- `website.json` – Static website hosting configuration.
- `cors.json` – Cross-Origin Resource Sharing rules.
- `index.html` – Sample static website.
- `hello.js` – JavaScript file used during the CORS demonstration.

## Key Notes

- PrivateLink keeps traffic on the AWS network.
- Gateway Endpoints provide free private access to S3.
- CORS controls which websites may access your resources.
- Avoid using `*` for AllowedOrigins in production.