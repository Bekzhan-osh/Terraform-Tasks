resource "aws_route53_record" "Ubuntu" {
  zone_id = "Z07175373QW1PYZZLXYLI"
  name    = "www.kamalov2020.com"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.Ubuntu.public_ip}"]
}
