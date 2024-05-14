variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "checkov-1-test"
}

variable "environment" {
  description = "The environment for the S3 bucket"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "ap-south-1" # Set your default region
}
