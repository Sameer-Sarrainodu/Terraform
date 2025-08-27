terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  backend "s3" {
    bucket="secure-testing-sam"
    region="us-east-1"
    key="secure"
    encrypt        = true
    use_lockfile   = true
  }
}
provider "aws" {
  region = "us-east-1"
  
}