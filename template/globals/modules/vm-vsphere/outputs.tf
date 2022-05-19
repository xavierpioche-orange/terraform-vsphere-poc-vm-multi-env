output "vms_default_ips" {
	value = vsphere_virtual_machine.vm.*.clone.0.customize.0.network_interface.0.ipv4_address
}

output "vms_names" {
	value = vsphere_virtual_machine.vm.*.name
}

output "tls_private_key" {
    value = tls_private_key.osadmin_ssh.private_key_pem
    sensitive = true
}

output "tls_public_key" {
    value = tls_private_key.osadmin_ssh.public_key_openssh
    sensitive = true
}
