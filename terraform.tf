terraform {
  cloud {
    organization = "devops-ngr"
    workspaces {
      name = "cka"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}