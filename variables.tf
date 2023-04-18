variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  description = "The CIDR block for subnet 1."
  default     = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  description = "The CIDR block for subnet 2."
  default     = "10.0.2.0/24"
}
