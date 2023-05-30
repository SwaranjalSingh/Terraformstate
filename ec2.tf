resource "aws_instance" "web" {
    count = 3
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  subnet_id     = "subnet-02fd86ec22e3fac87"
  tags = {
    Name    = "Swara ${count.index}"
    Owner   = "Swaranjal.singh@cloudeq.com"
    Purpose = "Training"
  }

  volume_tags = {
    Name    = "Swara ${count.index}"
    Owner   = "Swaranjal.singh@cloudeq.com"
    Purpose = "Training"
  }
}



provider "aws" {
  alias  = "east-2"
  region = "us-east-2"
}
