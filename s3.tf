resource "aws_s3_bucket" "swara_10" {
  bucket = "swara10"

  tags = {
    Name    = "Swaranjal"
    Owner   = "swaranjal.singh@cloudeq.com"
    purpose = "training"
  }
}




resource "aws_s3_bucket_versioning" "versioning-s3" {
  bucket = aws_s3_bucket.swara_10.id
  versioning_configuration {
    status = "Enabled"
  }
}

provider "aws" {
  region = "us-east-1"
}
