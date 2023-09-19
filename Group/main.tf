resource "morpheus_group" "tf_example_group56" {
  name      = "<%=customOptions.groupName%>"
  code      = "<%=customOptions.groupCode%>"
  location  = "denver"
 # cloud_ids = [1]
}
