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
