# -------------------------------
# Terraform Block: Defines the required version and provider constraints
# -------------------------------
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
