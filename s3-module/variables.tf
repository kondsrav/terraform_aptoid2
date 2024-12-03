# Define the name of the S3 bucket
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

# Define the ACL for the S3 bucket
variable "acl" {
  description = "The canned ACL to apply to the bucket (e.g., private, public-read)"
  type        = string
  default     = "private" # Default to private access
}

# Define the key for the object (path inside the bucket)
variable "object_key" {
  description = "The S3 object key (path within the bucket, e.g., folder/file.txt)"
  type        = string
}

# Define the path to the local file to upload
variable "file_path" {
  description = "The local path to the file to upload to the S3 bucket"
  type        = string
}

# Define the content type of the file to upload
variable "content_type" {
  description = "The MIME type of the file (e.g., text/plain, image/jpeg)"
  type        = string
  default     = "binary/octet-stream" # Default to binary file type
}

