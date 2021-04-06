resource "sumologic_role" "WWW" {
  name             = "${var.role_prefix[var.env]}-WWW"
  description      = "WWW Team"
  filter_predicate = <<-EOT
  _sourceCategory=${sumologic_http_source.HTTP_webandmobile-www.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_webstg-www.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_webprd-www.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_mobilewebstg-www.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_mobilewebprd-www.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_intf_nyt_com.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_intf-w_nyt_com.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_int_nyt_com.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_int_stg_nyt_com.category}
  OR _sourceCategory=int-static-prd
  OR _sourceCategory=int-static-stg
  OR _sourceCategory=int-static-w-prd
  OR _sourceCategory=int-w-nyt-com
  OR _sourceCategory=webandmobile-*
  OR _sourceName=*/www-*/syslog.log*
  OR _sourceName=*/www-*/kern.log*
  OR _sourceName=*/www-*/daemon.log*
  OR _sourceCategory=${sumologic_http_source.uploadswebandmobile-www-old_Collector_uploadswebandmobile-www-old.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_project-vi-alpha-dev.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_platforms_nytimes_com-prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-static_prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-static_stg.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_mwcm-dev.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_mwcm-prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_mwcm-stg.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-co-stg.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-co-prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-cooking-stg.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-cooking-prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_stg_fastly-query.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_prd_fastly-query.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-g1-prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-g1-stg.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_Attribute_Production.host_name}
  OR _sourceCategory=${sumologic_http_source.HTTP_Attribute_Staging.host_name}
  OR _sourceCategory=${sumologic_http_source.https-collector_dev_proof-of-concept.host_name}
  OR _sourceCategory=${sumologic_http_source.HTTP_elections_logs.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-www_prd.category}
  OR _sourceCategory=${sumologic_http_source.HTTP_fastly-www_stg.category}
  EOT
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-WWW" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.WWW.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.WWW.name}"
  group_manager         = "CN=Killeen\\, Gerald,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  lifecycle {
    prevent_destroy = true
  }
}
