terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = ">= 0.14.5"
    }
  }
}
provider "vsphere" {
  user           = var.vc_user
  password       = var.vc_pass
  vsphere_server = var.vc_server
  allow_unverified_ssl = true
}
module "createFolder" {
  # source = "../../modules/VMware/createFolder"
  # source = "git::https://github.com/gomorpheus/morpheus-automation-examples.git"
   source = "./modules/VMware/createFolder/main.tf"
   folder_name = var.folder_name
}
