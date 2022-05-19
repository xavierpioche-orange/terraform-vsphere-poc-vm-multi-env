resource "dns_a_record_set" "srv" {
  count = var.vm_count
  name = "${var.vm_prefix}-${var.vm_suffix}-${count.index + 1}"
  zone = "${var.vm_envx}.${var.vm_base_domain}."
  addresses = [ var.vm_ipaddress[count.index] ]
  ttl = 300
}

