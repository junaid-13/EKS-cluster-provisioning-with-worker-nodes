output "dev-eks-vpc-id" {
  description = "ID of the development EKS VPC"
  value       = aws_vpc.dev-eks-vpc.id
  
}

output "dev-eks-public-subnet-id" {
  description = "ID of the development EKS public subnet"
  value       = aws_subnet.dev-eks-public-subnet.id
}

output "dev-eks-private-subnet-id" {
  description = "ID of the development EKS private subnet"
  value       = aws_subnet.dev-eks-private-subnet.id
}

output "dev-eks-igw-id" {
  description = "ID of the development EKS internet gateway"
  value       = aws_internet_gateway.dev-eks-igw.id
}
