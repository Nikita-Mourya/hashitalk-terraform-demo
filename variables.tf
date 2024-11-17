# variables.tf

variable "name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "aws-demo-webserver"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-063d43db0594b521b"  # Update with a valid AMI ID for your region
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.small"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be provisioned"
  type        = string
}

variable "key_name" {
  description = "SSH key name for accessing the EC2 instance"
  type        = string
  default     = "hashitalk-demo-key"
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs associated with the EC2 instance"
  type        = list(string)
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the EC2 instance"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to assign to the EC2 instance"
  type        = map(string)
  default = {
    Name = "aws-ec2-terraform-demo"
  }
}
