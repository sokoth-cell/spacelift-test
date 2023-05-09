provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bckt-spacelift"
  acl    = "private"

  tags = {
    Name = "Example Bucket"
  }
}