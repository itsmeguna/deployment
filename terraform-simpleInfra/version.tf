terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.1"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}