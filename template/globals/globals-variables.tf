variable "xenv_vsphere_user" {
	type = map
	default = {
		"xdev" = "administrator@vsphere.local"
		"xtst" = "administrator@vsphere.local"
		"xitg" = "administrator@vsphere.local"
		"xsta" = "administrator@vsphere.local"
		"xmq1" = "administrator@vsphere.local"
		"xprd" = "administrator@vsphere.local"
	}
}


variable "xenv_vsphere_password" {
	type = map
	default = {
		"xdev" = "ChangeMe"
		"xtst" = "ChangeMe"
		"xitg" = "ChangeMe"
		"xsta" = "ChangeMe"
		"xmq1" = "ChangeMe"
		"xprd" = "ChangeMe"
	}
}



variable "xenv_vsphere_server" {
	type = map
	default = {
		"xdev" = "vcenter.infra.local"
		"xtst" = "vcenter.infra.local"
		"xitg" = "vcenter.infra.local"
		"xsta" = "vcenter.infra.local"
		"xmq1" = "vcenter.infra.local"
		"xprd" = "vcenter.infra.local"
	}
}



variable "xenv_datacenter" {
	type = map
	default = {
		"xdev" = "ENV-DEVELOPMENT"
		"xtst" = "ENV-TESTING"
		"xitg" = "ENV-INTEGRATION"
		"xsta" = "ENV-STAGING"
		"xmq1" = "ENV-MockQuality"
		"xprd" = "ENV-PRODUCTION"
	}
}



variable "xenv_datastore" {
	type = map
	default = {
		"xdev" = "XDEV"
		"xtst" = "XTST"
		"xitg" = "XITG"
		"xsta" = "XSTA"
		"xmq1" = "XMQ1"
		"xprd" = "XPRD"
	}
}

variable "xenv_cluster" {
	type = map
	default = {
		"xdev" = "XDEV"
		"xtst" = "XTST"
		"xitg" = "XITG"
		"xsta" = "XSTA"
		"xmq1" = "XMQ1"
		"xprd" = "XPRD"
	}
}

variable "xenv_folder" {
	type = map
	default = {
		"xdev" = "XDEV"
		"xtst" = "XTST"
		"xitg" = "XITG"
		"xsta" = "XSTA"
		"xmq1" = "XMQ1"
		"xprd" = "XPRD"
	}
}

variable "xenv_network1_subnet" {
	type = map
	default = {
		"xdev" = "192.168.45"
		"xtst" = "192.168.46"
		"xitg" = "192.168.47"
		"xsta" = "192.168.48"
		"xmq1" = "192.168.49"
		"xprd" = "192.168.50"
	}
}

variable "xenv_network1_gateway" {
	type = map
	default = {
		"xdev" = "254"
		"xtst" = "254"
		"xitg" = "254"
		"xsta" = "254"
		"xmq1" = "254"
		"xprd" = "254"
	}
}

variable "xenv_network1_netmask" {
	type = map
	default = {
		"xdev" = "24"
		"xtst" = "24"
		"xitg" = "24"
		"xsta" = "24"
		"xmq1" = "24"
		"xprd" = "24"
	}
}

variable "xenv_resource_pool" {
	type = map
	default = {
		"xdev" = "XDEV"
		"xtst" = "XTST"
		"xitg" = "XITG"
		"xsta" = "XSTA"
		"xmq1" = "XMQ1"
		"xprd" = "XPRD"
	}
}

variable "xenv_vm_prefix" {
	type = map
	default = {
		"xdev" = "de"
		"xtst" = "td"
		"xitg" = "it"
		"xsta" = "st"
		"xmq1" = "mq"
		"xprd" = "pr"
	}
}

variable "xenv_envx" {
	type = map
	default = {
		"xdev" = "xdev"
		"xtst" = "xtst"
		"xitg" = "xitg"
		"xsta" = "xsta"
		"xmq1" = "xmq1"
		"xprd" = "xprd"
	}
}

variable "xenv_dns_list" {
	type = map
	default = {
		"xdev" = "192.168.1.240"
		"xtst" = "192.168.1.240"
		"xitg" = "192.168.1.240"
		"xsta" = "192.168.1.240"
		"xmq1" = "192.168.1.240"
		"xprd" = "192.168.1.240"
	}
}

variable "xenv_dns_search" {
	type = map
	default = {
		"xdev" = "xdev.infra.local"
		"xtst" = "xtst.infra.local"
		"xitg" = "xitg.infra.local"
		"xsta" = "xsta.infra.local"
		"xmq1" = "xmq1.infra.local"
		"xprd" = "xprd.infra.local"
	}
}


variable zz_env {}
variable local_all_vm_suffix {}
variable local_xenv_vm_count {}
variable local_xenv_vm_size {}
variable local_xenv_ip_list {
        type = list(string)
}

