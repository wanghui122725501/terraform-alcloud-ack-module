resource "alicloud_vpc" "ack_vpc" {
  vpc_name    = var.vpc_name
  cidr_block  = var.vpc_cidr_block
  description = "ACK Cluster VPC"
}

resource "alicloud_vswitch" "ack_vswitch_b" {
  vswitch_name = var.vswitch_name
  cidr_block   = var.vswitch_cidr_block
  vpc_id       = alicloud_vpc.ack_vpc.id
  description  = "ACK Cluster VSW shanghai-B Zone"
  zone_id      = "cn-shanghai-b"
}