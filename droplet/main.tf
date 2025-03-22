

# Create a new Web Droplet in the blr1 region
resource "digitalocean_droplet" "web-app" {
  image  = lookup(var.images, var.selected_image_key)
  name   = "web-app-${var.selected_region}"
  region = var.digitalocean_regions[var.selected_region]
  size   = lookup(var.sizes, var.selected_size_key)
  ssh_keys =  [var.fingerprint]  
}
