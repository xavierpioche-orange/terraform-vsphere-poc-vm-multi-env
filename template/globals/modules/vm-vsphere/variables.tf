variable "vm_datacenter" {}
variable "vm_envx" {} 
variable "vm_prefix" {}
variable "vm_suffix" {}
variable "vm_template" { default="rhel78" }
variable "vm_network1" {}
variable "vm_ipaddress" {
  type = list
}
variable "vm_netmask" {}
variable "vm_gateway" {}
variable "vm_datastore" {}
variable "vm_pool" {}
variable "vm_count" {}
variable "vm_folder" {}
variable "vm_dns_list" {}
variable "vm_dns_search" {}

variable "vm_cpu" {}
variable "vm_cpu_map" {
	type = map
	default = {
		"micro" = "1"
		"small" = "1"
		"medium" = "2"
		"large" = "4"
		"largefs" = "2"
	}
}

variable "vm_memory" {}
variable "vm_memory_map" {
	type = map
	default = {
		"micro" = "2048"
		"small" = "4096"
		"medium" = "8192"
		"large" = "16384"
		"largefs" = "8192"
	}
}

variable "vm_datadsk" {}
variable "vm_datadsk_map" {
	type = map
	default = {
		"micro" = "5"
		"small" = "15"
		"medium" = "40"
		"large" = "80"
		"largefs" = "500"
	}
}
