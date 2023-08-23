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

resource "aws_ebs_volume" "example2213" {
  availability_zone = "ap-south-1"
  size              = 8

  tags = {
    Name = "Hellokurnool"
  }
}

