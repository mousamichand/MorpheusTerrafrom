resource "morpheus_group" "tf_example_group" {
  name      = customOptions.groupName
  code      = customOption.groupCode
  location  = "denver"
  cloud_ids = [1]
}
