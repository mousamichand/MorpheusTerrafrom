module "createFolder" {
  # source = "../../modules/VMware/createFolder"
  # source = "git::https://github.com/gomorpheus/morpheus-automation-examples.git"
   source = "./modules/VMware/createFolder/main.tf"
   folder_name = var.folder_name
}
