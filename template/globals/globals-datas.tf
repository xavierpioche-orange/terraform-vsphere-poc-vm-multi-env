data "vsphere_datacenter" "xenv-dc" {
  name = var.xenv_datacenter["${var.zz_env}"]
}
data "vsphere_datastore" "xenv-datastore" {
  name = var.xenv_datastore["${var.zz_env}"]
  datacenter_id = "${data.vsphere_datacenter.xenv-dc.id}"
}
data "vsphere_compute_cluster" "xenv-cluster" {
    name = var.xenv_cluster["${var.zz_env}"]
    datacenter_id = "${data.vsphere_datacenter.xenv-dc.id}"
}
data "vsphere_network" "xenv-network1" {
    name = var.xenv_network1_subnet["${var.zz_env}"]
    datacenter_id = "${data.vsphere_datacenter.xenv-dc.id}"
}
data "vsphere_resource_pool" "xenv-pool" {
    name = var.xenv_resource_pool["${var.zz_env}"]
    datacenter_id = "${data.vsphere_datacenter.xenv-dc.id}"
}
