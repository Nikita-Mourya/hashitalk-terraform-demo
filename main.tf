# -----------------------------------------
# Root Terraform Configuration
# Purpose: This configuration provisions a VPC with public and private subnets
#          and deploys an EC2 instance in the public subnet as a web server.
# Author: Nikita Mourya
# Last Updated: 21/11/20224
# -----------------------------------------


# -------------------------------
# EC2 Instance: Web Server in Public Subnet
# -------------------------------
resource "aws_instance" "web_server" {
  ami           = "ami-012967cc5a8c9f891"  # Amazon Linux 2 AMI (ensure it’s valid for your region)
  instance_type = "t3.micro"               # Instance type for the EC2 instance
  subnet_id     = module.vpc.public_subnets[0]  # Launch EC2 in the first public subnet
  key_name      = "myapp-dev-keypair"      # SSH Key for accessing the EC2 instance

  # Attach the default security group for access
  vpc_security_group_ids = [module.vpc.default_security_group_id]

  # Associate public IP address
  associate_public_ip_address = true

  # Tagging the EC2 instance for easy identification
  tags = {
    Name        = "myapp-dev-webserver"  # EC2 instance name
    Environment = "dev"                  # Environment tag for the instance
    Project     = "myapp"                # Project the EC2 belongs to
    Role        = "webserver"            # Role of the EC2 instance
  }
}

# -------------------------------
# End of Root Terraform Configuration
# -------------------------------
