provider "aws" {
  region = var.region
}


resource "aws_vpc" "EjemploAPI_TF" {
  
  # IP Range for the VPC
  cidr_block = "111.11.0.0/16"
  
  # Enabling automatic hostname assigning
  enable_dns_hostnames = true
  tags = {
    Name = "EjemploAPI_TF"
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
