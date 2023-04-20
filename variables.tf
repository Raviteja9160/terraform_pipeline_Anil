variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

variable "vpc_id" {
  type    = string
  default = "vpc-09761abb1f763b257" 
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-0b45e17e9362da5ad" 
}

variable "private_subnet_id" {
  type    = string
  default = "subnet-0f1f329ff45a9e18f"
}



variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "web-1"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "websg-2"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-02eb7a4783e7e9317"
}

