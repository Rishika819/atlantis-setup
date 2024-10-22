provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-atlantis-bucket-${random_string.unique_suffix.result}"
}

resource "random_string" "unique_suffix" {
  length  = 8
  special = false
}