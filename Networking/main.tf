# VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.main_cidr}"
    instance_tenancy = "${var.tenancy}"

    tags = {
    Name = "my_vpc"
  }
}

# Public
resource "aws_subnet" "Public_sg" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.Public_cidr

 tags = {
    Name = "Public_sg"
  }
}
# Private
resource "aws_subnet" "Private_sg" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.Private_cidr
 tags = {
    Name = "Private_sg"
  }
}
