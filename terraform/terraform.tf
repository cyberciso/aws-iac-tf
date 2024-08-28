terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "cyberciso-tf-states"
    key    = "terraform.tfstate"
    region = "ca-central-1"
  }

  required_version = ">= 1.6.3"
}