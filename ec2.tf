module "ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = "hashitalk-demo-ec2"
  ami           = "ami-063d43db0594b521b"   # Use a valid AMI ID for your region
  instance_type = "t3.small"

  subnet_id = module.vpc.public_subnets[0]  # Provision in the first public subnet
  key_name  = "hashitalk-demo-key"  # Provide your SSH key name for access

  vpc_security_group_ids = [module.vpc.default_security_group_id]

  associate_public_ip_address = true   # EC2 instance in the public subnet will have a public IP

  tags = {
    Name = "aws-ec2-terraform-demo"
  }
}
