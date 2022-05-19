terraform {
        required_providers {
                vsphere = {
                        source = "hashicorp/vsphere"
                }
        }
}

data "vsphere_virtual_machine" "template" {
  name = var.vm_template
  datacenter_id = var.vm_datacenter
}

resource "vsphere_virtual_machine" "vm" {
  count = var.vm_count
  name = "${var.vm_prefix}-${var.vm_suffix}-${count.index + 1}"
  folder = "${var.vm_folder}"
  datastore_id = var.vm_datastore
  resource_pool_id = var.vm_pool
  firmware = "bios"
  num_cpus = var.vm_cpu_map["${var.vm_cpu}"]
  memory = var.vm_memory_map["${var.vm_memory}"]
  guest_id = data.vsphere_virtual_machine.template.guest_id
  cpu_hot_add_enabled    = true
  cpu_hot_remove_enabled = true
  memory_hot_add_enabled = true
  wait_for_guest_ip_timeout = 0
  wait_for_guest_net_timeout = 0
  wait_for_guest_net_routable = false
  migrate_wait_timeout = 90
  network_interface {
	network_id = var.vm_network1
        adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  scsi_controller_count = 2
  scsi_type = data.vsphere_virtual_machine.template.scsi_type

  disk {
    label = "disk0"
    size = data.vsphere_virtual_machine.template.disks.0.size
    eagerly_scrub = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub 
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
    unit_number = 0
  }

  disk {
	label = "disk1"
	size = var.vm_datadsk_map["${var.vm_datadsk}"]
	thin_provisioned = true
	eagerly_scrub = false
	unit_number = 15
  }


  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
	  customize {
	timeout = 0
        linux_options {
          host_name = "${var.vm_prefix}-${var.vm_suffix}-${count.index + 1}"
          domain = "${var.vm_envx}.ms.fcm"
        }
       network_interface { 
		ipv4_address = var.vm_ipaddress[count.index]
		ipv4_netmask = var.vm_netmask
	   } 
	   ipv4_gateway = var.vm_gateway
           dns_server_list = [var.vm_dns_list]
           dns_suffix_list = [var.vm_dns_search]
      }
    }	
  connection {
	host = var.vm_ipaddress[count.index]
	type = "ssh"
	user = "ansible"
	private_key = file("/var/lib/awx/.ssh/id_rsa")
   }
}

resource "tls_private_key" "osadmin_ssh" {
	algorithm = "RSA"
	rsa_bits = 4096
}

locals {
	ssh_pub_key_without_new_line = "${replace(tls_private_key.osadmin_ssh.public_key_openssh, "\n", "")}"
}
