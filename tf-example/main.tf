provider "aws" {
  region  = "eu-north-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04bd74efcade5de13"
  instance_type = "t3.micro"
  key_name      = "app-ssh-key"

  tags = {
    Name = var.ec2_name
  }
}