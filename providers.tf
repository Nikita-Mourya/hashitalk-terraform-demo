# -------------------------------
# Terraform Block: Defines the required version and provider constraints
# -------------------------------
terraform {
  required_version = "~> 1.5.0"  # Restrict to Terraform 1.5.x for compatibility

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"  # Ensure compatibility with the AWS provider version 5.7.x
    }
  }
}

