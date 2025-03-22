variable "selected_image_key" {
  type    = string
}

variable "fingerprint" {
  type = string
  sensitive = true
}
variable "selected_size_key" {
  type    = string
}

variable "selected_region" {
  type = string
}

variable "digitalocean_regions" {
  type = map(string)
  default = {
    "Amsterdam"     = "ams3"
    "Bangalore"     = "blr1"
    "Frankfurt"     = "fra1"
    "London"        = "lon1"
    "New York 1"    = "nyc1"
    "New York 2"    = "nyc2"
    "New York 3"    = "nyc3"
    "San Francisco 2" = "sfo2"
    "San Francisco 3" = "sfo3"
    "Singapore"     = "sgp1"
    "Sydney"        = "syd1"
    "Toronto"       = "tor1"
  }
}



variable "images" {
  type = map(any)
  default = {
    ubuntu_x64    = "ubuntu-20-04-x64"
    ubuntu_x64_22 = "ubuntu-22-04-x64"
    debian_x64    = "debian-11-x64"
    centos_x64    = "centos-8-x64"
    rocky_x64     = "rockylinux-8-x64"
    fedora_x64    = "fedora-35-x64"
  }
}


variable "sizes" {
  type = map(any)
  default = {
    "14$"  = "s-1vcpu-1gb"
    "28$"  = "s-2vcpu-2gb"
    "56$"  = "s-2vcpu-4gb"
    "112$" = "s-4vcpu-8gb"
    "224$" = "s-8vcpu-16gb"
    "448$" = "s-16vcpu-32gb"
  }
}

