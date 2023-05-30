resource "aws_s3_bucket" "example" {
  bucket = "swara1"

  tags = {
    Name    = "Swaranjal"
    Owner   = "swaranjal.singh@cloudeq.com"
    purpose = "training"
  }
}

provider "aws" {
  region = "us-east-1"
}