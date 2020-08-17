locals {
  name = "${var.role_prefix[var.env]}-${replace(var.name, "/", "-")}"
}

resource "sumologic_role" "sumo-role" {
  name             = local.name
  description      = "${local.name} role (Managed by Terraform)"
  filter_predicate = var.search_filter
  capabilities     = var.capabilities
}

# Commenting this out until we can fix LDAP connections to AD
# # Generate AD group to match the Sumo Logic role
# resource "ad_group_to_ou" "ad-group" {
#   ou_distinguished_name = "OU=SumoLogic RBAC,OU=2FA Objects,OU=NYTMG,DC=ent,DC=nytint,DC=com"
#   group_name            = local.name
#   description           = "AD Group for Sumo Logic RBAC group ${local.name}"
#   auto_gid              = true
# }
