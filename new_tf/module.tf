module "my_module" {
  source = "path/to/my/module"

  instance_type    = "t2.micro"
  ami              = "ami-0c55b159cbfafe1f0"
  subnet_id        = "subnet-0123456789abcdef"
  security_group_id = "sg-0123456789abcdef"
  s3_bucket_name   = "my-bucket"
  iam_role_name    = "my-role"
}

output "instance_id" {
  value = module.my_module.instance_id
}

output "s3_bucket_name" {
  value = module.my_module.s3_bucket_name
}

output "iam_role_name" {
  value = module.my_module.iam_role_name
}
