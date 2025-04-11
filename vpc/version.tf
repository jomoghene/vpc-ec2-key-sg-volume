terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

provider "aws" {

region = "us-east-1"
  
}

terraform {
 backend "s3" {
   bucket = "jomo-w7-terraformstatebucket" # replace with your bucket
   key    = "qa/terraform.tfstate"
   region = "us-east-1"
   use_lockfile = true
 }
}