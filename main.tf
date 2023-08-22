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

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-tf-samplebucket342345"
  versioning {
        enabled = "true"
  }
  tags = {
    Name        = "haribucket123467"
    Environment = "Dev"
  }
}
resource "aws_ebs_volume" "volume1" {
  availability_zone = "us-east-2a"
  size              = 10

  tags = {
    Name = "Ebs-Volume"
  }
}
