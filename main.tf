terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "judith1-terraform-s3-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "judith2-terraform-s3-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "bucket3" {
  bucket = "judith3-terraform-s3-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0e1c5be2aa956338b"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
  associate_public_ip_address = true

}

resource "aws_key_pair" "mykey" {
  key_name   = "jkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7x+iY7YfLiHMzN2QdpTx7/jscKBQe8vy+If9qpzH4C/BIWQfKieHsuX6BtyoWtWL5EmWNLh3KmdHsIATF4KFJpnVIlInRkWBaMjFXCqZEcqP+DMUlmE4yQdj6rU/qeni/uwRu7bxuZMva89DHnB447CtDgqkS1up8HAKwIhrkfk3icyPSyDi7eZlAjGEKjzinf+fx0n0993e1U30BvH3bhc22b+f6P0Yh3BsT737Tu4GaWz0HqdGU7nLPzOl8UiVflpaeteZX+znT4smt+/BltBcsXid08Bksj6wcb8tY4FRJ56XujzXDrYORrtTtAZ3GfibjRWHFZfk8vJpRWnjF"
}



