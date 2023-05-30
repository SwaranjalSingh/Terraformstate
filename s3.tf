resource "aws_s3_bucket" "example" {
  bucket = "swara"

  tags = {
    Name    = "My bucket"
    Owner   = "swaranjal.singh@clooudeq.com"
    purpose = "training"
  }
}

provider "aws" {
  region = "us-east-1"
}