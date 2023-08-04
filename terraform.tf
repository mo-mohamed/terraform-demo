terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket         = "tfdemo-craigdunn"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state"
  }

}
