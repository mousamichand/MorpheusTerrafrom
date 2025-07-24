resource "morpheus_group" "tf_example_group" {
  name      = "testgroupmorpheus"
  code      = "tetscode12"
  location  = "denver"
  cloud_ids = [2]
}
