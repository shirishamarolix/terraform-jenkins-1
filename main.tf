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
  bucket = "my-tf-samplebucket3427"
  versioning {
        enabled = "true"
  }
  tags = {
    Name        = "haribucket123"
    Environment = "Dev"
  }
}
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = true
    enable_dns_hostnames = true
  tags = {
    Name = "harivpc"
    Terraform = "true"
    Environment = "DEV"
  }
}
