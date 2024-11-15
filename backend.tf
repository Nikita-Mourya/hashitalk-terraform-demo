# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "my-terraform-state-bucket-demo-nikita"
#   acl    = "private"
# }

# resource "aws_dynamodb_table" "terraform_lock" {
#   name           = "terraform-lock-table"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }


terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-demo-nikita"     # Replace with your S3 bucket name
    key            = "state/terraform.tfstate"            # Path to your state file
    region         = "us-east-1"                          # AWS region where your S3 and DynamoDB are located
    encrypt        = true                                 # Enable encryption for the state file
    dynamodb_table = "terraform-lock-table"               # DynamoDB table for locking
    acl            = "private"                            # Set access control list
  }
}


# terraform {
#   cloud {
#     organization = "nikitamourya-terraform-org"

#     workspaces {
#       name = "terraform-cloud-demo1"
#     }
#   }
# }