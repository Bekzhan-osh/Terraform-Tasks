resource "aws_key_pair" "key20" {
  key_name   = "key20"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
