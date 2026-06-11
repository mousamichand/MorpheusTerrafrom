 terraform {
   required_providers {
     hpe = {
       source  = "HPE/hpe"
       version = "1.4.0"
     }
   }
 }
  
provider "hpe" {
   morpheus{
   url      = var.morph_url
   access_token = var.access_token
}
 
 import {
   to = hpe_morpheus_cloud.cloud-test-vmware
   id = 4
 }
