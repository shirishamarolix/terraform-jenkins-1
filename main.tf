terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "instance1" {
   count = 3
    ami = "ami-098dd3a86ea110896"
    instance_type = "t2.micro"
}

  
   

