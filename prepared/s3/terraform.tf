
# terraform.tf

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  # Uncomment and configure this block if you want to use a remote backend
  # backend "s3" {
  #   bucket         = "my-terraform-state-bucket"
  #   key            = "s3-bucket/terraform.tfstate"
  #   region         = "us-west-2"
  #   encrypt        = true
  #   dynamodb_table = "terraform-state-lock"
  # }
}
