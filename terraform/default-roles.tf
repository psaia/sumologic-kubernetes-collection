resource "sumologic_role" "default-role" {
  name             = var.default_role
  description      = "Default AD Group role for Sumo Logic"
  filter_predicate = "_sourceCategory=/dev/null"
  capabilities     = ["createAccessKeys"]
}
