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
  tags = {
    Name = "dev-eks-public-subnet"
    Environment = var.Environment[0]
  }
}

resource "aws_subnet" "dev-eks-private-subnet" {
  vpc_id = aws_vpc.dev-eks-vpc.id
  cidr_block = var.dev-vpc-private-subnet-cidr
  availability_zone = var.dev-vpc-private-subnet-az
  tags = {
    Name = "dev-eks-private-subnet"
    Environment = var.Environment[0]
  }
}

resource "aws_internet_gateway" "dev-eks-igw" {
  vpc_id = aws_vpc.dev-eks-vpc.id
  tags = {
    Name = "dev-eks-igw"
    Environment = var.Environment[0]
  }
}

resource "aws_internet_gateway_attachment" "dev-eks-igw-attachment" {
  vpc_id = aws_vpc.dev-eks-vpc.id
  internet_gateway_id = aws_internet_gateway.dev-eks-igw.id
}

resource "aws_eip" "dev-eks-nat-eip" {
  domain = "vpc"
  tags = {
    Name = "dev-eks-nat-eip"
    Environment = var.Environment[0]
  }
}
resource "aws_nat_gateway" "dev-eks-nat-gateway" {
  allocation_id = aws_eip.dev-eks-nat-eip.id
  subnet_id    = aws_subnet.dev-eks-public-subnet.id
  tags = {
    Name = "dev-eks-nat-gateway"
    Environment = var.Environment[0]
  }
}
