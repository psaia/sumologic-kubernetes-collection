resource "sumologic_role" "infra-services" {
  name             = "${var.role_prefix[var.env]}-infra-services"
  description      = "Infra Services logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Redhat-Tower-Prod_redhat-tower-dev.category} OR _sourceCategory=${sumologic_http_source.Redhat-Tower-Prod_redhat-tower-stg.category} OR _sourceCategory=${sumologic_http_source.Redhat-Tower-Prod_redhat-tower-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-infra-services" {
  ou_distinguished_name = var.ad_oudn
  group_manager         = "CN=Shah\\, Rupen,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nyint,DC=com"
  group_name            = sumologic_role.infra-services.name
  description           = "AD Group for Sumo Logic RBAC ${sumologic_role.infra-services.name}"
  lifecycle {
    prevent_destroy = true
  }
}