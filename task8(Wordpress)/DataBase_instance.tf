# resource "aws_instance" "ubuntu" {
#   ami           = "${data.aws_ami.ubuntu.id}"
#   availability_zone = "${data.aws_availability_zones.available.names[3]}"
#   instance_type = "t3.micro"
#   tags = {
#     Name = "HelloWorld"
#   }
# }
resource "aws_instance" "db_centos" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.class.key_name}"
  vpc_security_group_ids = ["${aws_security_group.class1.id}"]
  subnet_id              = "${aws_subnet.subnet1.id}"
  user_data              = "${base64encode(data.template_file.init.rendered)}"

  root_block_device = [{
    delete_on_termination = true
  }]

  tags = {
    Name = "DataBase"
  }

  # provisioner "remote-exec" {
  #   connection {
  #     type        = "ssh"
  #     user        = "centos"
  #     private_key = "${file("~/.ssh/id_rsa")}"
  #     host        = "${aws_instance.db_centos.public_ip}"
  #   }

  #   inline = [
  #     "sudo yum install httpd mariadb-server mariadb -y",
  #    "sudo systemctl  start mariadb"
  #   ]
  # }

  # tags = {
  #   Name = "DB_server"
  # }
}
