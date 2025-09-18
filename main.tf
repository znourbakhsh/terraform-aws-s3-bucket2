terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}
provider "aws" {
  # Configuration options
  region = "eu-central-1"
}
provider "random" {
  # Configuration options for the random provider
  
}
resource "random_string" "demorandomstring" {
    length = 8
    upper = false
    special = false
  
}
resource "aws_s3_bucket" "random_bucket" {
  bucket = "zara-${random_string.demorandomstring.result}"
}
