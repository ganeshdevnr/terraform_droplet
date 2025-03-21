provider "digitalocean" {
  token = var.token
}

# data "digitalocean_sizes" "do_sizes" {  }

# output "do_sizes" {
#   value = data.digitalocean_sizes.do_sizes.sizes[*].slug
# }

module "droplet" {
    source = "./droplet"

    for_each = var.selected_regions

    selected_region =  each.value
    selected_image_key = var.selected_image_key
    selected_size_key = var.selected_size_key
}