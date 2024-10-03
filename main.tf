provider "aws" {
region = "us-east-1"
}

terraform {
 backend "remote" {
    hostname = "app.terraform.io"
    organization = "default"

    workspaces {
      name = "dummydel"
    }
  }
}

resource "aws_iam_user" "user_two" {
  name = "abc-user"
}
