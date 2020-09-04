# The guest role is a special one which users are added to by default when their accounts are first provisioned.
# This is not one that we want to manage through AD and it's scope should be limited.
resource "sumologic_role" "Guest" {
  name             = "${var.role_prefix[var.env]}-Guest"
  description      = "Default Guest User"
  filter_predicate = "_sourceCategory=guest"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}
