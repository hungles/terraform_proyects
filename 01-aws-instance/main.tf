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
  region = "us-east-1" // replace with your desired region
}

resource "aws_instance" "app_server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b6a0fb2d405b768d" // replace with your subnet ID

  tags = {
    Name = var.instance_name
  }
}
