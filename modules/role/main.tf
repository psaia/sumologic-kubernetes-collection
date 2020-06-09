resource "sumologic_role" "role" {
  name        = var.name
  description = "${var.name} role (Managed by Terraform)"

  filter_predicate = var.filter
  users = []
  capabilities = []

  lifecycle {
    # Users and capabilities are currently ignored by this provider.
    ignore_changes = [
      users,
      capabilities,
    ]
  }
}