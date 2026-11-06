
provider "aws" {
  region = "ap-south-2"

}

resource "aws_instance" "my_ec2" {
  instance_type = var.instance_type_value
  ami           = var.ami_value
  subnet_id     = var.subnet_id_value
  
}