terraform {
  required_version = "~>1.3"
}


provider "aws" {
  version = "~> 4.0"
  region  = var.aws_region
  profile = var.aws_profile
}
