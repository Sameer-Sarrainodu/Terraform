terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
}


provider "aws" {
  region = var.aws_reg # Change this to your region
}

data "aws_instances" "running" {
  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}
