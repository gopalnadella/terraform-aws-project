provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "temp_s3" {
  bucket = "gk-s3-bucket-dev" // Change to a unique name

  tags = {
    Name        = "Temp S3 Bucket"
    Environment = "dev"
  }
}