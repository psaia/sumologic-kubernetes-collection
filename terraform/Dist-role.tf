resource "sumologic_role" "Dist" {
  name             = "${var.role_prefix[var.env]}-Dist"
  description      = "Distribution PDP logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.PPD_dist-dev.category} OR _source=${sumologic_http_source.PPD_dist-dev.name} OR _source=${sumologic_http_source.PPD_dist-stg.name} OR _source=${sumologic_http_source.PPD_dist-prd.name} OR _sourceCategory=${sumologic_http_source.PPD_ppd-ink-dev.category} OR _source=${sumologic_http_source.PPD_ppd-ink-dev.name} OR _source=${sumologic_http_source.PPD_ppd-ink-stg.name} OR _source=${sumologic_http_source.PPD_ppd-ink-prd.name} OR _sourceCategory=${sumologic_http_source.PPD_ppd-ink-ce-dev.category} OR _source=${sumologic_http_source.PPD_ppd-ink-ce-dev.name} OR _source=${sumologic_http_source.PPD_ppd-ink-ce-stg.name} OR _source=${sumologic_http_source.PPD_ppd-ink-ce-prd.name} OR _sourceCategory=${sumologic_http_source.PPD_dist-batch-dev.category} OR _source=${sumologic_http_source.PPD_dist-batch-dev.name} OR _source=${sumologic_http_source.PPD_dist-batch-stg.name} OR _source=${sumologic_http_source.PPD_dist-batch-prd.name}"
  capabilities     = ["viewPartitions", "createAccessKeys"]
}

resource "ad_group_to_ou" "ad-group-Dist" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Dist.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Dist.name}"
  lifecycle {
    prevent_destroy = true
  }
}
