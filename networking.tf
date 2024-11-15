module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "hashitalk-demo-vpc"
  cidr = "10.0.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway = false  # For public subnet, no NAT needed
  single_nat_gateway = false  # Multiple public subnets without NAT
  
  tags = {
    Name = "aws-vpc-terraform-demo"
  }
}
