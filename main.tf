terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance1" {
   count = 3
    ami = "ami-0da59f1af71ea4ad2"
    instance_type = "t2.micro"
}

  
   

