terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


resource "aws_instance" "ec2_example" {
  ami                         = "ami-080e1f13689e07408"
  instance_type               = var.aws_instance
  count                       = var.instance_count
  associate_public_ip_address = var.ip_address
  tags = {
    Name = "CI-Terraform${count.index + 1}"
  }
}