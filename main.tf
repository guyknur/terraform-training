provider "aws" {
  region = "us-gov-west-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

resource "aws_instance" "app" {
  ami = "ami-adecbdcc"
  instance_type = "t2.micro"
  subnet_id = "subnet-09960ea71a650983b"

  tags = {
    Name = "Tom Dunn's App"
  }
}
