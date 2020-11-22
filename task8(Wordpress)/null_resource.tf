resource "null_resource" "remote" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    inline = [
      "sudo yum install httpd mariadb-server mariadb -y",
      "sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y",
      "sudo yum-config-manager --enable remi-php72",
      "sudo yum install php php-mysql -y",
      "sudo yum install wget -y",
      "sudo yum install unzip -y",
      "sudo wget https://wordpress.org/latest.zip",
      "sudo unzip latest.zip",
      "sudo mv wordpress/* /var/www/html",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo chown -R apache:apache /var/www/html",
      "sudo setenforce 0",
    ]
  }
}
