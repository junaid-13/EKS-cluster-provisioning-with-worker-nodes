resource "aws_vpc" "dev-eks-vpc" {
  cidr_block = var.dev-vpc-cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "dev-eks-vpc"
    Environment = "Development"
  }
  
}