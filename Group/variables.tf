variable "MorpheusUrl" {
  description = Morpheus URL"
  type        = string
  sensitive   = true   # marks the variable as sensitive so it won't show up in logs
}
variable "Morpheusaccesstoken" {
  description = Morpheus access token"
  type        = string
  sensitive   = true   # marks the variable as sensitive so it won't show up in logs
}
