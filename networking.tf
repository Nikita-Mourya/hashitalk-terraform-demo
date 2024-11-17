# -------------------------------
# VPC Module: Provision VPC with Public and Private Subnets
# -------------------------------
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"  # Using the official VPC module

  # VPC Basic Configuration
  name = "aws-vpc-terraform-demo"  # Name of the VPC
  cidr = "10.0.0.0/16"         # CIDR block for the VPC

  enable_dns_support   = true  # Enable DNS support in VPC
  enable_dns_hostnames = true  # Enable DNS hostnames in VPC

  # Availability Zones for better availability
  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  # Define subnets for public and private zones
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]

  # NAT Gateway Configurations (not needed for public subnets)
  enable_nat_gateway = false  # No NAT Gateway for public subnets
  single_nat_gateway = false  # Multiple subnets without NAT Gateway

  # Tagging the VPC for easier management
  tags = {
    Name = "aws-vpc-terraform-demo"  # VPC Name
  }
}