# Create an S3 bucket
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name # Assign the bucket name from variables
  acl    = var.acl         # Set the ACL for the bucket (e.g., private, public-read)
}

# Upload a file to the S3 bucket
resource "aws_s3_object" "file" {
  bucket       = aws_s3_bucket.this.id # Use the created bucket ID
  key          = var.object_key        # Specify the key (path) for the uploaded file
  source       = var.file_path         # Path to the local file to upload
  content_type = var.content_type      # Set the MIME type of the file
}

