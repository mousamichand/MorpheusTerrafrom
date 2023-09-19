resource "morpheus_group" "tf_example_group" {
  name      = customOption.groupName
  code      = customOption.groupCode
  location  = "denver"
  cloud_ids = [1]
}
