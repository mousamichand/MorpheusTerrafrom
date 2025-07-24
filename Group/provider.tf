terraform {
  required_providers {
    morpheus = {
      source = "gomorpheus/morpheus"
      version = "0.13.3"
    }
  }
}

provider "morpheus" {
  url      = "<%=morpheus.applianceUrl%>"
#  username = "<%=customOptions.morpheusUserName%>"
#  password = "<%=customOptions.morpheusPassword%>"
  access_token = "<%=var.morpheusPassword%>"
}
