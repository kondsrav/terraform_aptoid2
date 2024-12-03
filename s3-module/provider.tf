# Configure the AWS provider to interact with AWS services
provider "aws" {
  # AWS region where resources will be created
  region = var.aws_region
}

# Define the AWS region variable
variable "aws_region" {
  description = "The AWS region for resource creation"
  type        = string
  default     = "us-east-2" # Default to US East (N. Virginia)
}


