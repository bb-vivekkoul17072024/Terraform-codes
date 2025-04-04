terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }

  backend "local" {
    path = "/var/lib/jenkins/ec2-creation-a/terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraformtest1" {
  ami             = "ami-0e35ddab05955cf57"
  instance_type   = "t3.nano"
  tags = {
    Name = "ec2-a-terraformcheck"
  }
}
