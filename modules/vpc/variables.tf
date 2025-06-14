variable "dev-vpc-cidr" {
  description = "CIDR block for the development VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "prod-vpc-cidr" {
    description = "Production VPC CIDR block"
    type        = string
    default     = "190.0.0.0/16"
}
variable "Environment" {
  description = "Environment for the VPC"
  type        = list(string)
    default     = ["Development", "Production"] 
}

variable "dev-eks-vpc-public-subnet" {
  description = "Public subnet CIDR block for the development VPC"
  type        = string
  default     = "10.0.1.0/24"
  
}

variable "dev-eks-public-subnet-az" {
  description = "Availability Zone for the development VPC public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "dev-vpc-private-subnet-cidr" {
  description = "Private subnet CIDR block for the development VPC"
  type        = string
  default     = "10.0.2.0/24"
}

variable "dev-vpc-private-subnet-az" {
  description = "Availability Zone for the development VPC private subnet"
  type        = string
  default     = "us-east-1f"
  
}

variable "dev-eks-public-rt" {
  description = "Route table for the development VPC public subnet"
  type        = string
  default     = "dev-eks-public-rt"
}

variable "dev-eks-private-rt" {
  description = "Route table for the development VPC private subnet"
  type        = string
  default     = "dev-eks-private-rt"
  
}