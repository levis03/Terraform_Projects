#Configuring the AWS provider
provider "aws" {
  region = "us-east-1"
}

#Configuring the resource
resource "aws_instance" "example" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

tags = {
  "name" = "terraform-example"
}
}