resource "aws_route_table" "route_table_public" {
  vpc_id = "${aws_vpc.vpc_main.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw_main.id}"
  }
  tags {
    env = "${var.env}"
    Name = "rtb-natgw-work-public"
  }
}

resource "aws_route_table" "route_table_private" {
  vpc_id = "${aws_vpc.vpc_main.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.natgw_main.id}"
  }
  tags {
    env = "${var.env}"
    Name = "rtb-natgw-work-private"
  }
}

resource "aws_main_route_table_association" "route_table_main_association" {
  route_table_id = "${aws_route_table.route_table_public.id}"
  vpc_id = "${aws_vpc.vpc_main.id}"
}
