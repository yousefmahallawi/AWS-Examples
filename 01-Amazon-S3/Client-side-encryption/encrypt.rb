require 'aws-sdk-s3'
require 'openssl'

key = OpenSSL::PKey::RSA.new(1024)

bucket = 'encrypt-client-fun-ab-634232'
object_key = 'hello.txt'

s3 = Aws::S3::EncryptionV2::Client.new(
  encryption_key: key,
  key_wrap_schema: :rsa_oaep_sha1,
  content_encryption_schema: :aes_gcm_no_padding,
  security_profile: :v2
)

resp = s3.put_object(
  bucket: bucket,
  key: object_key,
  body: 'handshake'
)

puts "Uploaded encrypted object."

puts s3.get_object(
  bucket: bucket,
  key: object_key
).body.read

puts Aws::S3::Client.new.get_object(
  bucket: bucket,
  key: object_key
).body.read
