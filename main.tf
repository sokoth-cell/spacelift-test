provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bckt-spacelift"
  acl    = "private"

  tags = {
    Name = "spacelift-bckt"
  }
}

resource "aws_iam_user" "example" {
  name = "example-user"
}

resource "aws_iam_access_key" "example" {
  user = aws_iam_user.example.name
}