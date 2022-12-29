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
  ami           = "ami-0ecc74eca1d66d8a6"
  instance_type = "t2.micro"
  key_name = "acesso-ec2"
  security_groups = [ "default", "acesso-ssh" ]
  # user_data = <<-EOF
  #   #!/bin/bash
  #   cd /home/ubuntu
  #   echo "<h1>Ola mundo feito com Terraform alterado</h1>" > index.html
  #   nohup busybox httpd -f -p 8080 &
  #               EOF

  tags = {
    Name = "terraform Ensible Pyhon"
  }
}
