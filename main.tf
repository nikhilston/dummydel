provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 5
  ami           = "ami-04823729c75214919"
  instance_type = "t2.micro"
  key_name      = "devops29-new"
  vpc_security_group_ids = ["sg-05cfa7da6d7e8def3"]
  tags = {
    Name = "test-server"
  }
}
