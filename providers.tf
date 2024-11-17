# -------------------------------
# Terraform Block: Defines the required version and provider constraints
# -------------------------------
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"  # Ensure compatibility with the AWS provider version 5.7.x
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
