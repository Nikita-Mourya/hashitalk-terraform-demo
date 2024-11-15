# terraform {
#   backend "s3" {
#     bucket         = "demokanu"                           # Replace with your S3 bucket name
#     key            = "state/terraform.tfstate"            # Path to your state file
#     region         = "us-east-1"                          # AWS region where your S3 and DynamoDB are located                              # Enable encryption for the state file               # DynamoDB table for locking
#     acl            = "private"                            # Set access control list
#   }
# }


terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "hashitalk-demo"
    workspaces {
      name = "hashitalk-terraform-demo"
    }
  }
}