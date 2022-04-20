terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# information needed to access aws
provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "/mnt/c/Users/Savi/.aws/credentials"
  profile                  = "terraform" #vscode 'terraform' aws profile
}

