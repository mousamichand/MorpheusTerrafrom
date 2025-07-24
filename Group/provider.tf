terraform {
  required_providers {
    morpheus = {
      source  = "gomorpheus/morpheus"
      version = "0.7.0"
    }
  }
}

provider "morpheus" {
  url      = "<%=var.morpheusUrl%>"
#  username = "<%=customOptions.morpheusUserName%>"
#  password = "<%=customOptions.morpheusPassword%>"
  access_token = "<%=var.morpheusPassword%>"
}
