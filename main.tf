provider "aws" {
  region = var.aws_region
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "My VPC"
  }
}

# Create a public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet_cidr_block
  availability_zone = "ap-south-1a" # Change to your desired availability zone

  tags = {
    Name = "Public Subnet"
  }
}

# Create a private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr_block
  availability_zone = "ap-south-1b" # Change to your desired availability zone

  tags = {
    Name = "Private Subnet"
  }
}

# Output the VPC and subnet IDs
output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

# Create an internet gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "My Internet Gateway"
  }
}

#Create security group with firewall rules
resource "aws_security_group" "my_security_group" {
  name        = var.security_group
  description = "security group for Ec2 instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = var.security_group
  }
}

# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]
  tags= {
    Name = var.tag_name
  }
}

# Create Elastic IP address
resource "aws_eip" "myFirstInstance" {
  vpc      = true
  instance = aws_instance.myFirstInstance.id
tags= {
    Name = "my_elastic_ip"
  }
}
