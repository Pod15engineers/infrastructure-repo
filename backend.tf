terraform {
  backend "s3" {
    bucket = "pod15-my-tf-state-backend-22becd287"
    key    = "prodution/terraform.tfstate"
    region = "us-east-1"
  }
}



