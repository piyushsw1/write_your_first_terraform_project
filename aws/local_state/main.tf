terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
terraform {
  required_providers {
    http = {
      source = "terraform-aws-modules/http"
      version = "2.4.1"
    }
  }
}

provider "http" {
  # Configuration options
}
}

