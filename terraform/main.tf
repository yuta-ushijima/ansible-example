terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami = "ami-0bba69335379e17f8"
  instance_type = "t3.micro"
  key_name = "rocky-linux-network"
  vpc_security_group_ids = ["sg-0555e087549d1b935"]
  subnet_id = "subnet-024b7de102eed32dd"
  associate_public_ip_address = true
  tags = {
    Name = "ansible_example"
  }
}
