require 'aws-sdk-s3'
require 'securerandom'

bucket_name = ENV['BUCKET_NAME']
region = ENV['AWS_REGION']

s3 = Aws::S3::Client.new(region: region)

s3.create_bucket(
  bucket: bucket_name,
  create_bucket_configuration: {
    location_constraint: region
  }
)

number_of_files = 1 + rand(6)

number_of_files.times do |i|

  filename = "file_#{i}.txt"
  output_path = "/tmp/#{filename}"

  File.open(output_path, "w") do |file|
    file.write(SecureRandom.uuid)
  end

  File.open(output_path, "rb") do |file|
    s3.put_object(
      bucket: bucket_name,
      key: filename,
      body: file
    )
  end

end

puts "Finished uploading #{number_of_files} files."