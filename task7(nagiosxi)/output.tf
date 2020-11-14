output "ID" {
  value = "${aws_instance.centos.id}"
}

output "AMI" {
  value = "${aws_instance.centos.ami}"
}

output "ARN" {
  value = "${aws_instance.centos.arn}"
}

output "AZ" {
  value = "${aws_instance.centos.availability_zone}"
}

output "PIP" {
  value = "${aws_instance.centos.public_ip}"
}

output "Root BLock Device" {
  value = "${aws_instance.centos.root_block_device}"
}


