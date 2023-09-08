terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }

  backend "s3" {
    
  }
}

# Indicate the region we used in AWS
provider "aws" {
  region = "${var.aws_region}"
}