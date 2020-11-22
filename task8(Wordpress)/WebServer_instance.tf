# # resource "aws_instance" "ubuntu" {
# #   ami           = "${data.aws_ami.ubuntu.id}"
# #   availability_zone = "${data.aws_availability_zones.available.names[3]}"
# #   instance_type = "t3.micro"
# #   tags = {
# #     Name = "HelloWorld"
# #   }
# # }
resource "aws_instance" "centos" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.class.key_name}"
  vpc_security_group_ids = ["${aws_security_group.class2.id}"]
  subnet_id              = "${aws_subnet.subnet101.id}"

  root_block_device = [{
    delete_on_termination = true
  }]

  tags = {
    Name = "WebServer"
  }
}
