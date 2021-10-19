
module "vpc" {
source = "../Networking/"
}

resource "aws_key_pair" "mykey" {
  key_name    = "aws_keys"
  public_key  =  "${var.key}"
}

resource "aws_instance" "web" {
  ami                         = "${var.image}"
  instance_type               = "${var.instance}"
  subnet_id                   = "${module.vpc.Public_subnet}"
  associate_public_ip_address = "${var.data}"
  security_groups             = ["${module.vpc.Public_sec}"]
  key_name                    = aws_key_pair.mykey.key_name

tags = {
  Name = "Web"
}
}

resource "aws_instance" "db" {
  ami                         = "${var.image}"
  instance_type               = "${var.instance}"
  subnet_id                   = "${module.vpc.Private_subnet}"
  security_groups             = ["${module.vpc.Private_sec}"]
  key_name                    = aws_key_pair.mykey.key_name

  tags = {
    Name = "Db"
  }
}
output "web_server" {
  value = aws_instance.web.public_ip
}
output "db_server" {
  value = aws_instance.db.private_ip
}

