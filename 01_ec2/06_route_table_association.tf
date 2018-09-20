resource "aws_route_table_association" "route_table_association_public_a" {
  route_table_id = "${aws_route_table.route_table_public.id}"
  subnet_id = "${aws_subnet.subnet_public_a.id}"
}
resource "aws_route_table_association" "route_table_association_public_c" {
  route_table_id = "${aws_route_table.route_table_private.id}"
  subnet_id = "${aws_subnet.subnet_public_c.id}"
}

resource "aws_route_table_association" "route_table_association_private_a" {
  route_table_id = "${aws_route_table.route_table_private.id}"
  subnet_id = "${aws_subnet.subnet_private_a.id}"
}

resource "aws_route_table_association" "route_table_association_private_c" {
  route_table_id = "${aws_route_table.route_table_private.id}"
  subnet_id = "${aws_subnet.subnet_private_c.id}"
}
