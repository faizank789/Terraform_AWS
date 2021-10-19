# Public security Group
resource "aws_security_group" "Public" {
  name        = "allow_ssh for public"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress = [
    {
      description      = "ssh from internet"
      from_port        = var.ssh_port
      to_port          = var.ssh_port
      protocol         = "tcp"
      cidr_blocks      = ["${var.internet_cidr}"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["${var.internet_cidr}"]
      description      = "Outbound rule"
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  tags = {
    Name = "Public"
  }
}

# Private subnet

# Public security Group
resource "aws_security_group" "Private" {
  name        = "allow_ssh for private"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress = [
    {
      description      = "ssh from Public"
      from_port        = "${var.ssh_port}"
      to_port          = "${var.ssh_port}"
      protocol         = "tcp"
      cidr_blocks      = ["${var.Public_cidr}"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["${var.internet_cidr}"]
      ipv6_cidr_blocks = ["::/0"]
      description      = "Outbound rule"
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]

   tags = {
    Name = "Private"
  }
}
