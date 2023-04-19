terraform {
  backend "s3" {
    bucket = "first-tf-state-bucket"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "dynamo-db-table"
  }
}
