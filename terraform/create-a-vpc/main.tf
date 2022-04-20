
resource "aws_vpc" "terraform_dev_vpc" { # terraform_dev_vpc name is used within terraform | not aws
  cidr_block        = "10.254.0.0/16"
  enable_dns_hostnames = true

  tags = {
      Name: "terraform_dev"
  }
  
}