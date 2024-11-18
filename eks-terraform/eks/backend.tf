terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket = "truck-fleet-management"
    key    = "test/aws_infra_EKS"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = var.aws-region
}
