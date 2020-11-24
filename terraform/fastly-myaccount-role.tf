# This role applies to fastly-myaccount logs. It is separate from fastly-role.tf because these logs are under compliance.
# Eventually this role will replace what's in Myaccount_Fastly_Logs-role.tf once the migration to JSON logs is complete.

resource "sumologic_role" "fastly-myaccount-logs" {
  name             = "${var.role_prefix[var.env]}-fastly-myaccount-logs"
  description      = "Accessing fastly-myaccount JSON logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_fastly-myaccount_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-myaccount_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-myaccount_dev.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-fastly-myaccount-logs" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.fastly-myaccount-logs.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.fastly-myaccount-logs.name}"
  group_manager         = "CN=Killeen\\, Gerald,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  lifecycle {
    prevent_destroy = true
  }
}
