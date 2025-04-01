terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" #taken from terraform registery
      version = "5.92.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # Set the region to ap-south-1 (Mumbai)
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "vivekkoulterformbucket"  # The unique name of the S3 bucket
}
