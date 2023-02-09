provider "aws" {
    region = "us-east-1"
    access_key = "AKIARTJLGD6GV3J3CTBP"
    secret_key = "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"
     }

     resource "aws_vpc" "Feskola-VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Feskola-VPC"
  }
}

resource "aws_subnet" "Feskola-subnet" {
  vpc_id            = aws_vpc.Feskola-VPC.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Feskola-Subnet"
  }
}

resource "aws_subnet" "Feskola-subnet-Private" {
  vpc_id            = aws_vpc.Feskola-VPC.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Feskola-Subnet"
  }
}