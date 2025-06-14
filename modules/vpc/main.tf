resource "aws_vpc" "dev-eks-vpc" {
  cidr_block = var.dev-vpc-cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "dev-eks-vpc"
    Environment = var.Environment[0]
  }
  
}

resource "aws_vpc" "prod-eks-VPC" {
  cidr_block = var.prod-vpc-cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "prod-eks-vpc"
    Environment = var.Environment[1]
  }
  
}

resource "aws_subnet" "dev-eks-public-subnet" {
  vpc_id = aws_vpc.dev-eks-vpc.id
  cidr_block = var.dev-eks-vpc-public-subnet
  availability_zone = var.dev-eks-public-subnet-az
}

resource "aws_subnet" "dev-eks-private-subnet" {
  vpc_id = aws_vpc.dev-eks-vpc.id
  cidr_block = var.dev-vpc-private-subnet-cidr
  availability_zone = var.dev-vpc-private-subnet-az
  
}