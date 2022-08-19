#Configuring the AWS provider
provider "aws" {
  region = "us-east-1"
}

#Creating a VPC
resource "aws_vpc" "first-vpc" {
 cidr_block = "10.0.0.0/16" 
 tags = {
   "Name" = "production"
 }
}
#Adding a subnet to the VPC
resource "aws_subnet" "subnet-1" {
  vpc_id =aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "first-Subnet"
  }
}

#Configuring the resource
resource "aws_instance" "firstServer" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

tags = {
  "name" = "terraform-example"
}
}
