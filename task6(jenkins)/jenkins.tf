resource "aws_instance" "centos" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.class2.id}"]
  key_name               = "${aws_key_pair.class.key_name}"

  root_block_device = [{
    delete_on_termination = true
  }]

  tags = {
    Name = "Jenkins"
  }
}
