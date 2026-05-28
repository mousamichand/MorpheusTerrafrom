 terraform {
   required_providers {
     hpe = {
       source = "HPE/hpe"
     }
   }
 }
  variable "access_token" {
   description = "Morpheus API access token"
   type        = string
   sensitive   = true
 }
  variable "morph_url" {
   description = "Morpheus API access token"
   type        = string
   sensitive   = true
 }
  locals {
   logo_path = "${abspath(path.module)}/logo.jpg"
 }
 provider "hpe" {
   morpheus{
   url      = var.morph_url
   access_token = var.access_token
}
 }
 
 # Workflow catalog item - NO logo provided (should reproduce blank logo)
# resource "hpe_morpheus_catalog_item_workflow" "mc-test_no_logo" {
#   name         = "test-catalog-no-logo"
#   description  = "Test catalog item without a logo"
#   enabled      = true
#   featured     = false
#   workflow_id  = 2638
#   context_type = "appliance"
#   content      = "Test catalog item - no logo"
#   visibility   = "public"
# }

 resource "hpe_morpheus_catalog_item_workflow" "test_with_logo" {
   name                 = "test-catalog-with-logo"
   description          = "Test catalog item with a logo"
   logo_image_path       = "${abspath(path.module)}/logo.jpg"
   logo_image_name      = "logo.jpg"
   enabled              = true
   featured             = false
   workflow_id          = 2638
   labels               = ["terraform test", "demo"]
   context_type         = "appliance"
   content              = "Test catalog item - with logo"
   visibility           = "public"
 }
 output "debug_logo_path" {
   value = abspath(path.module)
 }

