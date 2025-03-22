variable "token" {
  type = string
}
variable "selected_regions" {
  type = set(string)
  default = ["Bangalore"]  
}

variable "selected_image_key" {
  type    = string
  default = "ubuntu_x64"
}

variable "selected_size_key" {
  type    = string
  default = "28$"
}