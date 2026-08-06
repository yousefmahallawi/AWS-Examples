# Notes

Requester Pays shifts request and data transfer charges from the bucket owner to the requester.

The requester must authenticate and explicitly include the Requester Pays header.

If the required header is missing, Amazon S3 returns a 403 Forbidden error and neither account is charged.