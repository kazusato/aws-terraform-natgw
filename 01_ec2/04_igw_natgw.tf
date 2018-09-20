resource "aws_internet_gateway" "igw_main" {
  vpc_id = "${aws_vpc.vpc_main.id}"
  tags {
    env = "${var.env}"
    Name = "igw-natgw-work"
  }
}

resource "aws_nat_gateway" "natgw_main" {
  allocation_id = "${aws_eip.eip_nat_gw.id}"
  subnet_id = "${aws_subnet.subnet_public_c.id}"
  tags {
    env = "${var.env}"
    Name = "natgw-natgw-work"
  }
}
