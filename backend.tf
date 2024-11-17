# -----------------------------------------
# Terraform Backend Configuration
# Purpose: Configure Terraform to store the state file in an S3 bucket 
#          for state management and enable DynamoDB for state locking.
# -----------------------------------------

terraform {
  # Backend Configuration for using S3 to store the Terraform state file
  backend "s3" {
    # S3 Bucket name where the state file will be stored
    bucket = "demokanu"  # Replace with your actual S3 bucket name

    # Key (path) for the state file inside the S3 bucket
    key = "state/terraform.tfstate"  # Path to the state file within the bucket

    # AWS Region where the S3 bucket and DynamoDB table are located
    region = "us-east-1"  # Ensure the region matches where your resources are located

    # Enable server-side encryption for the state file to secure the data
    encrypt = true  # Use encryption to secure the state file

    # Access Control List (ACL) settings for the S3 bucket (set to private)
    acl = "private"  # Ensures the state file is not publicly accessible

    # DynamoDB table for state locking to prevent concurrent Terraform runs
    dynamodb_table = "terraform-locks"  # Replace with your DynamoDB table for state locking
  }
}

































# -----------------------------------------
# Terraform Cloud Configuration
# Purpose: Configure Terraform Cloud to store the state remotely
#          and manage workspaces for the team.
# -----------------------------------------

# terraform {
#   cloud {
#     # The hostname for the Terraform Cloud service
#     hostname = "app.terraform.io"  # Terraform Cloud URL

#     # Organization name in Terraform Cloud
#     organization = "hashitalk-demo"  # Replace with your organization name in Terraform Cloud

#     # Workspace configuration
#     workspaces {
#       # Workspace name where the state will be stored
#       name = "hashitalk-terraform-demo"  # Replace with your desired workspace name
#     }
#   }
# }
