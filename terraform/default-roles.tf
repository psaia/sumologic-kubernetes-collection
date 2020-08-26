resource "sumologic_role" "default-role" {
  name             = var.default_role
  description      = "Default AD Group role for Sumo Logic"
  filter_predicate = "_sourceCategory=/dev/null"
}

resource "ad_group_to_ou" "ad-group-default-role" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.default-role.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.default-role.name}"
}
