locals {
  name = "${var.role_prefix[var.env]}-${replace(var.name, "/", "-")}"
}

resource "sumologic_role" "sumo-role" {
  name             = local.name
  description      = "${local.name} role (Managed by Terraform)"
  filter_predicate = var.search_filter
  capabilities     = var.capabilities
}

# Generate AD group to match the Sumo Logic role
resource "ad_group_to_ou" "ad-group" {
  count                 = var.enable_ad ? 1 : 0

  ou_distinguished_name = var.ad_oudn
  group_name            = local.name
  description           = "AD Group for Sumo Logic RBAC group ${local.name}"
}
