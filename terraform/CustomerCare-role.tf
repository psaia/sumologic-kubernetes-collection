locals {
  sources = [
    sumologic_http_source.Care_Connect_care-connect-dev,
    sumologic_http_source.Care_Connect_care-connect-stg,
    sumologic_http_source.Care_Connect_care-connect-prd
  ]
  filter_pred = join(" OR ", [for src in local.sources : "_source=${src.name} OR _sourceCategory=${src.category}"])
}

resource "sumologic_role" "CustomerCare" {
  name             = "${var.role_prefix[var.env]}-CustomerCare"
  description      = "Customer Care Applogs"
  filter_predicate = "${local.filter_pred} OR ${module.nytimes-care-eks-cluster.search_filter}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-CustomerCare" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.CustomerCare.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.CustomerCare.name}"
  group_manager         = "CN=Cora\\, Joseph,OU=GApps Objects Users,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  lifecycle {
    prevent_destroy = true
  }
}
