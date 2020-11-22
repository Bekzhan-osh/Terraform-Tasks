resource "aws_subnet" "subnet101" {
  vpc_id                  = "${aws_vpc.main.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block1}"
  tags                    = "${var.tags}"
}

resource "aws_subnet" "subnet102" {
  vpc_id                  = "${aws_vpc.main.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block2}"
  tags                    = "${var.tags}"
}

resource "aws_subnet" "subnet103" {
  vpc_id                  = "${aws_vpc.main.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block3}"
  tags                    = "${var.tags}"
}
