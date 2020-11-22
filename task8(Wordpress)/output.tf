output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "private_subnet1" {
  value = "${aws_subnet.subnet1.id}"
}

output "private_subnet2" {
  value = "${aws_subnet.subnet2.id}"
}

output "private_subnet3" {
  value = "${aws_subnet.subnet3.id}"
}

output "public_subnet1" {
  value = "${aws_subnet.subnet101.id}"
}

output "public_subnet2" {
  value = "${aws_subnet.subnet102.id}"
}

output "public_subnet3" {
  value = "${aws_subnet.subnet103.id}"
}

output "web_public_ip" {
  value = "${aws_instance.centos.public_ip}"
}

output "web_AZ" {
  value = "${aws_instance.centos.availability_zone}"
}

output "db_private_ip" {
  value = "${aws_instance.db_centos.private_ip}"
}

output "db_AZ" {
  value = "${aws_instance.db_centos.availability_zone}"
}

output "db_user" {
  value = "wpuser"
}

output "db_psswd" {
  value = "dbpass"
}

output "tags" {
  value = "${var.tags}"
}
