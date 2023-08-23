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

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-tf-sample1232277"
  versioning {
        enabled = "true"
  }
  tags = {
    Name        = "siribuck227713"
    Environment = "Dev"
  }
}

