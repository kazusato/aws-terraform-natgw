resource "aws_subnet" "subnet_public_a" {
  cidr_block = "10.21.0.0/24"
  vpc_id = "${aws_vpc.vpc_main.id}"
  availability_zone = "ap-northeast-1a"
  tags {
    env = "${var.env}"
    Name = "subnet-natgw-work-public-a"
  }
}

resource "aws_subnet" "subnet_public_c" {
  cidr_block = "10.21.1.0/24"
  vpc_id = "${aws_vpc.vpc_main.id}"
  availability_zone = "ap-northeast-1c"
  tags {
    env = "${var.env}"
    Name = "subnet-natgw-work-public-c"
  }
}

resource "aws_subnet" "subnet_private_a" {
  cidr_block = "10.21.2.0/24"
  vpc_id = "${aws_vpc.vpc_main.id}"
  availability_zone = "ap-northeast-1a"
  tags {
    env = "${var.env}"
    Name = "subnet-natgw-work-private-a"
  }
}

resource "aws_subnet" "subnet_private_c" {
  cidr_block = "10.21.3.0/24"
  vpc_id = "${aws_vpc.vpc_main.id}"
  availability_zone = "ap-northeast-1c"
  tags {
    env = "${var.env}"
    Name = "subnet-natgw-work-private-c"
  }
}
