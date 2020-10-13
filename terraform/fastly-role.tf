resource "sumologic_role" "fastly" {
  name             = "${var.role_prefix[var.env]}-fastly"
  description      = "Accessing fastly logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_fastly-gcs-assets_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-static_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-www_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-gcs-assets_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-static_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-www_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-www-purge_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg-purge_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg-purge_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_video-service.category} OR _sourceCategory=${sumologic_http_source.HTTP_video-service-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-waf-apps_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-waf-apps_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-nytco_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-nytco_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-rss_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-rss_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mwcm_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mwcm_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-int_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-int_prd.category} OR _sourceCategory=${sumologic_http_source.SEO_fastly-spiderbites_stg.category} OR _sourceCategory=${sumologic_http_source.SEO_fastly-spiderbites_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising-waf_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising-waf_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising_prd.category}"
  capabilities     = ["manageFieldExtractionRules", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "manageFields"]
}

resource "ad_group_to_ou" "ad-group-fastly" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.fastly.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.fastly.name}"
  lifecycle {
    prevent_destroy = true
  }
}
