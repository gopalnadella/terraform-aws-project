variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316"  # Example Amazon Linux 2 AMI
}

variable "instance_type" {
  default = "t2.micro"
}
