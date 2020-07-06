locals {
  name = replace(var.name, "/", "-")
}

resource "sumologic_role" "sumo-role" {
  name             = local.name
  description      = "${var.name} collector (Managed by Terraform)"
  filter_predicate = var.search_filter
  capabilities     = var.capabilities
}

# Lay the framework for this for now--not working yet
# resource "ad_group_to_ou" "ad-group" {
#   ou_distinguished_name = "OU=SumoLogic RBAC,OU=2fA Objects, OU=NYTMG, DC-ent, DC=nytint, DC=com"
#   group_name            = local.name
#   description           = "AD Group for Sumo Logic RBAC group ${var.name}"
#   auto_gid              = true
# }
