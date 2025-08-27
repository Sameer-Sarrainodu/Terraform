terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
}
provider "aws" {
    alias = "dev"
    region = "us-east-1"
    profile = "dev"
  
}

provider "aws" {
    alias = "prod"
    region = "us-east-1"
    profile = "prod"
  
}