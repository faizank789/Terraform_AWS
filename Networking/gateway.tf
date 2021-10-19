resource "aws_internet_gateway" "my_gw" {
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_route_table" "my_route" {
  vpc_id = aws_vpc.my_vpc.id

  route {
      cidr_block = "${var.internet_cidr}"
      gateway_id = aws_internet_gateway.my_gw.id
    }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.Public_sg.id
  route_table_id = aws_route_table.my_route.id
}

