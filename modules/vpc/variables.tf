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
  type        = array(string)
    default     = ["Development", "Production"] 
}