terraform {
  backend "s3" {
    bucket = "my-tf-state-backend-22becd287"
    key    = "prodution/terraform.tfstate"
    region = "us-east-1"
  }
}


