terraform {
  required_providers {
    morpheus = {
      source  = "gomorpheus/morpheus"
      version = "0.7.0"
    }
  }
}

provider "morpheus" {
  url      = var.moprheusurl
  username = var.username
  password = var.morph_passwd
}