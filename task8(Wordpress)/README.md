# terraform-iaac

```
module "VPC" {
  source              = "../"
  region              = "${var.region}"
  cidr_block          = "${var.cidr_block}"
  private_cidr_block1 = "${var.private_cidr_block1}"
  private_cidr_block2 = "${var.private_cidr_block2}"
  private_cidr_block3 = "${var.private_cidr_block3}"
  public_cidr_block1  = "${var.public_cidr_block1}"
  public_cidr_block2  = "${var.public_cidr_block2}"
  public_cidr_block3  = "${var.public_cidr_block3}"

  instance_type = "${var.instance_type}"
  tags          = "${var.tags}"
}

```

### Get the output

```
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

```

### Regions

```
us-east-1.tfvars
us-east-2.tfvars
us-west-1.tfvars
us-west-2.tfvars

```
### Apply and Destroy

```
terraform apply -var-file regions/us-east-1.tfvars

terraform destroy -var-file regions/us-east-1.tfvars
