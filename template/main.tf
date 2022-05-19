module "xdev" {
	source = "./globals"
	zz_env="xdev"
	local_xenv_vm_count = 2
	local_xenv_vm_size = "small"

	local_all_vm_suffix = var.local_all_vm_suffix
	local_xenv_ip_list = var.local_xenv_ip_list
}

#module "xtst" {
#	source = "./globals"
#	zz_env="xtst"
#	local_xenv_vm_count = 2
#	local_xenv_vm_size = "small"
#
#	local_all_vm_suffix = var.local_all_vm_suffix
#	local_xenv_ip_list = var.local_xenv_ip_list
#}

#module "xitg" {
#	source = "./globals"
#	zz_env="xitg"
#	local_xenv_vm_count = 2
#	local_xenv_vm_size = "small"
#
#	local_all_vm_suffix = var.local_all_vm_suffix
#	local_xenv_ip_list = var.local_xenv_ip_list
#}

#module "xsta" {
#	source = "./globals"
#	zz_env="xsta"
#	local_xenv_vm_count = 2
#	local_xenv_vm_size = "small"
#
#	local_all_vm_suffix = var.local_all_vm_suffix
#	local_xenv_ip_list = var.local_xenv_ip_list
#}

#module "xmq1" {
#	source = "./globals"
#	zz_env="xmq1"
#	local_xenv_vm_count = 2
#	local_xenv_vm_size = "small"
#
#	local_all_vm_suffix = var.local_all_vm_suffix
#	local_xenv_ip_list = var.local_xenv_ip_list
#}

#module "xprd" {
#	source = "./globals"
#	zz_env="xprd"
#	local_xenv_vm_count = 2
#	local_xenv_vm_size = "small"
#
#	local_all_vm_suffix = var.local_all_vm_suffix
#	local_xenv_ip_list = var.local_xenv_ip_list
#}
