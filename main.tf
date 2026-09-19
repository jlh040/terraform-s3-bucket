terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "jeff-devops-book-bucket-1"

  tags = {
    Name = "My DevOps Book Bucket"
    ManagedBy = "Terraform"
  }
}