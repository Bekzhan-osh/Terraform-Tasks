output "vpc_id" {
  value = "${module.VPC.vpc_id}"
}

output "private_subnet1" {
  value = "${module.VPC.private_subnet1}"
}

output "private_subnet2" {
  value = "${module.VPC.private_subnet2}"
}

output "private_subnet3" {
  value = "${module.VPC.private_subnet3}"
}

output "public_subnet1" {
  value = "${module.VPC.public_subnet1}"
}

output "public_subnet2" {
  value = "${module.VPC.public_subnet2}"
}

output "public_subnet3" {
  value = "${module.VPC.public_subnet3}"
}

output "web_public_ip" {
  value = "${module.VPC.web_public_ip}"
}

output "web_AZ" {
  value = "${module.VPC.web_AZ}"
}

output "db_private_ip" {
  value = "${module.VPC.db_private_ip}"
}

output "db_AZ" {
  value = "${module.VPC.db_AZ}"
}

output "db_user" {
  value = "${module.VPC.db_user}"
}

output "db_psswd" {
  value = "${module.VPC.db_psswd}"
}

output "tags" {
  value = "${module.VPC.tags}"
}
