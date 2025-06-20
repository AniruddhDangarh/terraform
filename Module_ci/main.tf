terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "my_ec2_session1" {
  ami           = "ami-07b3f199a3bed006a"
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstEC2-1"
  }
}