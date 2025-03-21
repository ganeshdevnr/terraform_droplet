output "ip_address" {
    value = resource.digitalocean_droplet.web-app.ipv4_address
}