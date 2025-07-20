resource "aws_s3_bucket" "tf_state" {
  bucket = "gk-state-file-cicd-bucket"  # Change to a unique name

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "bootstrap"
  }
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "gk-terraform-locks-ddb"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform Lock Table"
    Environment = "bootstrap"
  }
}
