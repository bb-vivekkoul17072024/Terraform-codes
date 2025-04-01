terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" #taken from terraform registery
      version = "5.92.0"
    }
  }
}


provider "aws" {
  # Configuration options
  region= ap-south-1 #here we specify that we want to use the variable named region.

}

resource "aws_instance" "terraformtest" {
  ami="ami-0e35ddab05955cf57"
  instance_type = "t3.nano"
  tags = {
    Name = "ec2-b-terraform"
  }
  
}
#we can also modify the resource by chaning the values in this file.Terraform will first delete the resource and then
//create a new one with this Configuration.
#operations performed: terraform init,terraform plan(summary of changes),terraform apply
#terraform destroy
