terraform {
  backend "s3" {
    bucket         = "gk-state-file-cicd"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "users_dev-cicd"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-1"
}