resource "aws_vpc" "vpc_main" {
  cidr_block = "10.21.0.0/16"
  tags {
    env = "${var.env}"
    Name = "vpc-natgw-work"
  }
}
