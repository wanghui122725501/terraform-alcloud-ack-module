resource "alicloud_cs_managed_kubernetes" "my_ack" {
  name                 = var.ack_cluster_name
  version              = var.ack_cluster_version
  cluster_spec         = var.ack_cluster_spec
  availability_zone    = var.vswitch_zone_id
  service_cidr         = var.ack_cluster_service_cidr
  pod_cidr             = var.ack_cluster_pod_cidr
  new_nat_gateway      = var.ack_cluster_create_nat_gateway
  load_balancer_spec   = var.ack_cluster_slb_spec
  slb_internet_enabled = var.ack_cluster_enabled_slb_internet
  proxy_mode           = var.ack_cluster_kube_proxy_mode
  worker_vswitch_ids   = [alicloud_vswitch.ack_vswitch_b.id]

  dynamic "addons" {
    for_each = var.ack_cluster_addons
    content {
      name   = lookup(addons.value, "name")
      config = lookup(addons.value, "config")

    }
  }
}