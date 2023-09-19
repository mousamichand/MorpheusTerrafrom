resource "morpheus_group" "tf_example_group" {
  name      = var.groupname
  code      = var.groupcode
  location  = "denver"
  cloud_ids = [1]
}
