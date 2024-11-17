# -----------------------------------------
# Terraform Backend Configuration
# Purpose: Configure Terraform to store the state file in an S3 bucket 
#          for state management and enable DynamoDB for state locking.
# -----------------------------------------

# terraform {
#   # Backend Configuration for using S3 to store the Terraform state file
#   backend "s3" {
#     # S3 Bucket name where the state file will be stored
#     bucket = "hashitalk-terraform-demo-bucket"  # Replace with your actual S3 bucket name
#     key = "state/terraform.tfstate"  # Path to the state file within the bucket
#     region = "us-east-1"  # Ensure the region matches where your resources are located
#   }
# }



# -----------------------------------------
# Terraform Cloud Configuration
# Purpose: Configure Terraform Cloud to store the state remotely
#          and manage workspaces for the team.
# -----------------------------------------

terraform {
  cloud {
    # The hostname for the Terraform Cloud service
    hostname = "app.terraform.io"  # Terraform Cloud URL

    # Organization name in Terraform Cloud
    organization = "hashitalk-demo"  # Replace with your organization name in Terraform Cloud

    # Workspace configuration
    workspaces {
      # Workspace name where the state will be stored
      name = "hashitalk-terraform-demo"  # Replace with your desired workspace name
    }
  }
}
