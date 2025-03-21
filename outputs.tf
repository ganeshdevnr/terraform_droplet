output "ip_addresses" {
  value = { for region, instance in module.droplet : region => instance.ip_address }
}
