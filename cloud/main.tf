 terraform {
   required_providers {
     hpe = {
       source  = "HPE/hpe"
       version = "1.4.0"
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

provider "hpe" {
   morpheus{
   url      = var.morph_url
   access_token = var.access_token
}
 
}
