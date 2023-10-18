variable "vpc_name" {
  type        = string
  description = "The VPC name for ACK cluster"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The vpc cidr block for ACK cluster"
}

variable "vswitch_name" {
  type        = string
  description = "The Vswitch name for ACK cluster"
}

variable "vswitch_cidr_block" {
  type        = string
  description = "The vswitch cidr block for ACK cluster"
}

variable "vswitch_zone_id" {
  type        = string
  description = "The Vswitch zone id for ACK cluster"
}

variable "ack_cluster_name" {
  type        = string
  description = "The name of ACK cluster"
}

variable "ack_cluster_version" {
  type        = string
  description = "The Version of ACK cluster"
}

variable "ack_cluster_spec" {
  type        = string
  description = "The Spec of ACK cluster"
}

variable "ack_cluster_service_cidr" {
  type        = string
  description = "The Kubernetes Service Kind CIDR"
}

variable "ack_cluster_pod_cidr" {
  type        = string
  description = "The Kubernetes Pod Kind CIDR"
}

variable "ack_cluster_create_nat_gateway" {
  type        = bool
  description = "Create A new Gateway for ACK cluster"
}

variable "ack_cluster_slb_spec" {
  type        = string
  description = "The SLB spec for ACK cluster"
}

variable "ack_cluster_enabled_slb_internet" {
  type        = bool
  description = "Enabled SLB Internet access"
}

variable "ack_cluster_kube_proxy_mode" {
  type        = string
  description = "The kubernetes kube-proxy mode"
}

variable "ack_cluster_addons" {
  type = list(object({
    name   = string
    config = string
  }))
  description = "Install Addons Service for ACK cluster"
}

variable "node_pool_name" {
  type        = string
  description = "The Node Pool For ACK cluster"
}

variable "node_pool_instance_type" {
  type        = list(string)
  description = "The Node Pool Instance Type"
}

variable "node_pool_image_type" {
  type        = string
  description = "The image Type For Node Pool, example: AliyunLinux, CentOS"
}

variable "node_pool_runtime_name" {

  type        = string
  description = "the containerd run time for ACK,default is containerd"
}

variable "node_pool_runtime_version" {
  type        = string
  description = "containerd runtime version"
}

variable "node_pool_system_disk_category" {
  type        = string
  description = "The system Disk Type For Node Pool"
}

variable "node_pool_system_disk_size" {
  type        = number
  description = "The System Disk size for node pool"
}

variable "node_pool_desired_size" {
  type        = number
  description = "The desired size for node pool"
}

# 竞价实例类型，生产环境禁止使用竞价实例
variable "node_pool_spot_strategy" {
  type        = string
  description = "The Spot strategy for Node pool"
}

variable "node_pool_spot_price_limit" {
  type        = string
  description = "The spot price limit for node pool"
}

variable "node_pool_password_length" {
  type        = number
  description = "The node password length"
}