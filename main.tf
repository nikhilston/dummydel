provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 5
  ami           = "ami-00f251754ac5da7f0"
  instance_type = "t2.micro"
  key_name      = "devops29-new"
  tags = {
    Name = "test-server"
  }
}
