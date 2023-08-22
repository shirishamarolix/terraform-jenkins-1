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
  bucket = "my-tf-samplebucket34234"
  versioning {
        enabled = "true"
  }
  tags = {
    Name        = "haribucket1234678"
    Environment = "Dev"
  }
}
