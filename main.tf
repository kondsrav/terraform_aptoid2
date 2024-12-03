module "s3_bucket_with_file" {
  source       = "./s3-module"                # Path to the S3 module
  bucket_name  = "my-unique-s3-bucket"        # S3 bucket name
  acl          = "private"                    # Set bucket to private
  object_key   = "folder1/my-file.txt"        # Path in the bucket
  file_path    = "/local/path/to/my-file.txt" # File to upload
  content_type = "text/plain"                 # File MIME type
}

