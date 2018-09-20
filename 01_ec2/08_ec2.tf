// Assume key_pair_main already exists
/*
resource "aws_key_pair" "key_pair_main" {
  key_name = "key_pair_kfkstm"
  public_key = "${file("nogit/id_rsa.pub")}"
}
*/

resource "aws_instance" "ec2_natgw_work_public" {
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  disable_api_termination = false
  key_name = "key_pair_main"
  vpc_security_group_ids = [
    "${aws_security_group.secgrp_natgw_work_ssh.id}"
  ]
  subnet_id = "${aws_subnet.subnet_public_a.id}"
  ebs_block_device {
    device_name = "/dev/sdf"
    volume_type = "gp2"
    volume_size = "10"
  }
  tags {
    env = "${var.env}"
    Name = "ec2-natgw-work-public"
  }
}

resource "aws_instance" "ec2_natgw_work_private" {
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  disable_api_termination = false
  key_name = "key_pair_main"
  vpc_security_group_ids = [
    "${aws_security_group.secgrp_natgw_work_ssh.id}"]
  subnet_id = "${aws_subnet.subnet_private_a.id}"
  ebs_block_device {
    device_name = "/dev/sdf"
    volume_type = "gp2"
    volume_size = "10"
  }
  tags {
    env = "${var.env}"
    Name = "ec2-natgw-work-private"
  }
}
