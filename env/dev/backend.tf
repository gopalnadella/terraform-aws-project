#pointing state file to s3 and dynamodb for locking

terraform {
  backend "s3" {
    bucket         = "gk-state-file-cicd-bucket"  # Match what was created in backend-setup
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "gk-terraform-locks-ddb"
    encrypt        = true
  }
}
