provider "vsphere" {
  user = var.xenv_vsphere_user["${var.zz_env}"]
  password = var.xenv_vsphere_password["${var.zz_env}"]
  vsphere_server = var.xenv_vsphere_server["${var.zz_env}"]
  allow_unverified_ssl = true
}

module "xenv-vm" {
  source = "./modules/vm-vsphere/"
  vm_cpu = var.local_xenv_vm_size
  vm_memory = var.local_xenv_vm_size
  vm_datadsk = var.local_xenv_vm_size
  vm_count = var.local_xenv_vm_count
  vm_envx = var.xenv_envx["${var.zz_env}"]
  vm_datacenter = data.vsphere_datacenter.xenv-dc.id
  vm_network1 = data.vsphere_network.xenv-network1.id
  vm_prefix = var.xenv_vm_prefix["${var.zz_env}"]
  vm_suffix = var.local_all_vm_suffix
  vm_ipaddress = ["${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[0]}","${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[1]}","${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[2]}","${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[3]}"]
  vm_netmask = var.xenv_network1_netmask["${var.zz_env}"]
  vm_gateway = "${var.xenv_network1_subnet["${var.zz_env}"]}.${var.xenv_network1_gateway["${var.zz_env}"]}"
  vm_datastore = data.vsphere_datastore.xenv-datastore.id
  vm_pool = data.vsphere_resource_pool.xenv-pool.id
  vm_folder = var.xenv_folder["${var.zz_env}"]
  vm_dns_list = var.xenv_dns_list["${var.zz_env}"]
  vm_dns_search = var.xenv_dns_search["${var.zz_env}"]
}

module "xenv-dns" {
 source = "./modules/dns/"
 vm_count = var.local_xenv_vm_count
 vm_envx = var.xenv_envx["${var.zz_env}"]
 vm_prefix = var.xenv_vm_prefix["${var.zz_env}"]
 vm_suffix = var.local_all_vm_suffix
 vm_ipaddress = ["${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[0]}","${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[1]}","${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[2]}","${var.xenv_network1_subnet["${var.zz_env}"]}.${var.local_xenv_ip_list[3]}"]
}

output "ips" {
  value = module.xenv-vm.vms_default_ips
}

output "vms" {
  value = module.xenv-vm.vms_names
}

output "sshpri" {
  value = module.xenv-vm.tls_private_key
  sensitive = true
}

output "sshpub" {
   value = module.xenv-vm.tls_public_key
   sensitive = true
}

