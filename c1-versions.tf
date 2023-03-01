# terraform block

terraform {
  required_version = "~> 1.3.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider Block-01

provider "aws" {
  region = var.ec2region
}