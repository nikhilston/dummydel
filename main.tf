provider "aws" {
region = "us-east-1"
}

resource "aws_iam_user" "user_one" {
  name = "test-user"
}
