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

output "dev-eks-nat-eip-id" {
  description = "ID of the development EKS NAT EIP"
  value       = aws_eip.dev-eks-nat-eip.id
}   

output "dev-eks-nat-gateway-id" {
  description = "ID of the development EKS NAT gateway"
  value       = aws_nat_gateway.dev-eks-nat-gateway.id
}