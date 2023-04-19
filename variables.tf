variable "aws_region" {
  description = "The AWS region in which to create resources"
  default = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default = "my-vpc"
}

variable "internet_gateway_name" {
  description = "The name of the internet gateway"
  default = "my-internet-gateway"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  default = "10.0.1.0/24"
}

variable "public_subnet_availability_zone" {
  description = "The availability zone for the public subnet"
  default = "us-west-2a"
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  default = "my-public-subnet"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet"
  default = "10.0.2.0/24"
}

variable "private_subnet_availability_zone" {
  description = "The availability zone for the private subnet"
  default = "us-west-2b"
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  default = "my-private-subnet"
}
