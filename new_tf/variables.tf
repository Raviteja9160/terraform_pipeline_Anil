variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0c55b159cbfafe1f0"
}

variable "subnet_id" {
  type    = string
}

variable "security_group_id" {
  type    = string
}

variable "s3_bucket_name" {
  type    = string
}

variable "iam_role_name" {
  type    = string
}
