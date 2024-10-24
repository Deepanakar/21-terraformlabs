terraform {
  backend "s3" {
    bucket = "mybucke123"
    key    = "global/s3/terraform.tfstate"
    region = "ap-south-1"
  }
}