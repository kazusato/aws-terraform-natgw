resource "aws_eip" "eip_ap" {
  instance = "${aws_instance.ec2_natgw_work_public.id}"
  vpc = true
  tags {
    env = "${var.env}"
    Name = "epi-"
  }
}

resource "aws_eip" "eip_nat_gw" {
  vpc = true
  tags {
    env = "${var.env}"
  }
}
