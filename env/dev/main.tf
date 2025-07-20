provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source      = "../../modules/s3"
  bucket_name = "dev-app-bucket-123456"
}

module "ec2_instance" {
  source        = "../../modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  name          = "dev-web-instance"
}
