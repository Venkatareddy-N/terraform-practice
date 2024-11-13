terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "venkatswan"
    key            = "workspaces-key" # every repo should have S3-key
    region         = "us-east-1"
    dynamodb_table = "venkat-db"
  }
}

provider "aws" {
  region = "us-east-1"
}