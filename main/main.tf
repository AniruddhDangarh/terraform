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

module "ec2_instance" {
  source         = "../modules/ec2_instance"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_name  = var.instance_name
}

