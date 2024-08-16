provider "aws" {
  region = "ap-south-1" # Asia Pacific (Mumbai) region
}


resource "aws_instance" "my_instance" {
  ami           = "ami-0ddd035991e69d175"
  instance_type = "t2.micro" # Free tier eligible instance type

  tags = {
    Name = "terraform-example"
  }
}
