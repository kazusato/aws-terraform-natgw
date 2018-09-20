resource "aws_security_group" "secgrp_natgw_work_ssh" {
  name = "secgrp-natgw-work-ssh"
  description = "NATGW work SSH"
  vpc_id = "${aws_vpc.vpc_main.id}"
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags {
    env = "${var.env}"
    Name = "secgrp-natgw-work-ssh"
  }

}
