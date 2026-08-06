# Notes

## S3 Bucket Keys

- Bucket Keys reduce the number of AWS KMS requests when using SSE-KMS.
- Amazon S3 generates a temporary bucket-level key and reuses it for object encryption.
- This can reduce KMS request costs by up to 99%.
- Bucket Keys improve performance by reducing calls to AWS KMS.
- Bucket Keys are enabled only for SSE-KMS encrypted objects.

## Client-Side Encryption

- Data is encrypted before it leaves the client.
- AWS never receives the plaintext version of the object.
- Only users with the encryption key can decrypt the data.
- AWS SDKs provide built-in client-side encryption libraries.
- Downloading an encrypted object without the encryption client returns ciphertext instead of the original data.