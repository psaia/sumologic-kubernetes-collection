resource "sumologic_role" "ECOMM" {
  name             = "${var.role_prefix[var.env]}-ECOMM"
  description      = "E-Commerce Team"
  filter_predicate = "_sourceCategory=applogs-store OR _sourceCategory=applogs-ecomm OR _sourceCategory=applogs-lire OR _sourceCategory=lire-* OR _sourceCategory=ecomm-hdweb OR _sourceCategory=ecommerce-* OR _sourceCategory=${sumologic_http_source.HTTP_stg-ecommerce-payflow.category} OR _sourceCategory=prd/ecommerce/payflow OR _sourceCategory=business-ax-etl OR _sourceCategory=aristo-prd OR _sourceCategory=axpetl-prd OR _sourceCategory=${sumologic_http_source.PPD_dist-dev.category} OR _sourceCategory=${sumologic_http_source.Ecomm-Payflow_ecommerce-payflow-http.category} OR _sourceCategory=linux-* ecmcore OR _sourceCategory=linux-* payflow OR _sourceCategory=infra-jenkins* OR _sourceCategory=sugar* OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire.category} OR _sourceCategory=linux-* sugar OR _sourceCategory=${sumologic_http_source.Ecomm-Payflow_ecommerce-ecmcore-http.category} OR _sourceCategory=circa OR _sourceCategory=${sumologic_http_source.Ecomm-Payflow_ecommerce-payflow-http.category} OR _source=${sumologic_http_source.Ecomm-Payflow_ecommerce-ecmcore-http.name} OR _source=${sumologic_http_source.Ecomm-Payflow_ecommerce-payflow-http.name} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-waf-apps_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-waf-apps_prd.category} OR _sourceCategory=tokenization* OR _sourceCategory=ecmcore-* OR _sourceCategory=ecr-* OR _sourceCategory=${sumologic_http_source.Ecomm-Payflow_ecommerce-payflow-api-stg.category} OR ${module.nytimes-spg-petstore.search_filter} OR ${module.nytimes-spg-productservice.search_filter} OR ${module.nytimes-spg-printsite-management-service.search_filter} OR ${module.nytimes-spg-invoice-service.search_filter} OR ${module.nytimes-spg-subinfo.search_filter} OR ${module.nytimes-spg-itunes-subscription-service.search_filter} OR ${module.nytimes-spg-inyt-subscription-api.search_filter} OR _sourceCategory=nytm-payflow-waf-prd OR ${module.nytimes-spg-settlements.search_filter}"
  capabilities     = ["viewScheduledViews", "manageFieldExtractionRules", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "viewCollectors", "manageFields"]
}

resource "ad_group_to_ou" "ad-group-ECOMM" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.ECOMM.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.ECOMM.name}"
  group_manager         = "CN=De Meulder\\, Olivier,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  lifecycle {
    prevent_destroy = true
  }
}
