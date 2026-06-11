 terraform {
   required_providers {
     hpe = {
       source  = "HPE/hpe"
       version = "1.4.0"
     }
   }
 }
 
 provider "hpe" {
   morpheus {
     url      = "https://<your-morpheus-appliance>"
     username = "<username>"
     password = "<password>"
   }
 }
 
 import {
   to = hpe_morpheus_cloud.cloud-test-vmware
   id = <vmware-cloud-id>
 }
