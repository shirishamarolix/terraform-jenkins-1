
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-tf-siribuck227713"
  versioning {
        enabled = "true"
  }
  tags = {
    Name        = "siribuck22"
    Environment = "Dev"
  }
}
  
   

