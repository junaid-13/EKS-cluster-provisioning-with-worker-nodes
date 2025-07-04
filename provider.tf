terraform {
  backend "s3" {
    bucket = "day-2-tfstate-bucket-for-tf"
    key = "terraformm.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "day-2-terraform-locks"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west"
  region = "us-west-2"
}
