provider "aws" {
  region = "ap-south-2" # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c24c764e44ed98f2" # Specify an appropriate AMI ID
  instance_type = "t3.micro"
  subnet_id     = "subnet-07cc06dadecdd0048"
}