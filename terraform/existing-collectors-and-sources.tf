resource "sumologic_collector" "Akamai_Cloud_Monitor" {
  name     = "Akamai_Cloud_Monitor"
  timezone = "America/Los_Angeles"
}

resource "sumologic_collector" "Artifactory" {
  name        = "Artifactory"
  description = "Artifactory logs"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "atlassian-jira-events" {
  name     = "atlassian-jira-events"
  category = "atlassian-jira-events"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "ATT__At_The_Times_" {
  name        = "ATT (At The Times)"
  description = "At The Times"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "AWS" {
  name     = "AWS"
  timezone = "UTC"
}

resource "sumologic_collector" "aws-nyt-beta" {
  name        = "aws-nyt-beta"
  description = "NYT Beta Team AWS Collector"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "AWSMA" {
  name        = "AWSMA"
  description = "AWS MultiAccount"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "AzureADLogs" {
  name        = "AzureADLogs"
  description = "Hosted collector for Azure AD Logs"
  category    = "AzureADLogs"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "Business-PPI" {
  name        = "Business-PPI"
  description = "Business PPI application"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Care_Connect" {
  name        = "Care Connect"
  description = "Customer care connect app logs"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Care_Services" {
  name     = "Care Services"
  timezone = "America/New_York"
}

resource "sumologic_collector" "CMOTS" {
  name        = "CMOTS"
  description = "Magnolia/CMOTS marketing"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "CMS" {
  name     = "CMS"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "DV_Goblin_Bot" {
  name        = "DV Goblin Bot"
  description = "Bot to automate namespace setup in vault"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "DV_SSM_API" {
  name        = "DV SSM API"
  description = "DevSecOps: logs for ssm api"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "dv-build-depot-prd" {
  name     = "dv-build-depot-prd"
  category = "build_depot_prd"
  timezone = "America/New_York"
}

resource "sumologic_collector" "dv-jenkins" {
  name        = "dv-jenkins"
  description = "DV Jenkins /Nginx logs"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "ECMCORE" {
  name        = "ECMCORE"
  description = "Ecmcore application logs"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Ecomm-Payflow" {
  name        = "Ecomm-Payflow"
  description = "Ecomm and Payflow https collector"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "ECR" {
  name        = "ECR"
  description = "Ecomm Reporting"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "ELB_Logs" {
  name     = "ELB Logs"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "File_Uploads" {
  name     = "File Uploads"
  timezone = "UTC"
}

resource "sumologic_collector" "FireEye" {
  name     = "FireEye"
  category = "FireEye"
  timezone = "UTC"
}

resource "sumologic_collector" "FTPS" {
  name        = "FTPS"
  description = "Collector for FTPS server syslog (DV-3909)"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "GKE" {
  name     = "GKE"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "google_apps_gsuite_alerts" {
  name        = "google_apps_gsuite_alerts"
  description = "This is for collecting alerts from the G Suite Alert Center"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "google_apps_gsuite_audit" {
  name        = "google_apps_gsuite_audit"
  description = "This is for collecting G Suite Apps Audit Sources"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "HTTP" {
  name     = "HTTP"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "https-collector_dev" {
  name        = "https-collector.dev"
  description = "Development Hosted HTTP/HTTPS Collector"
  timezone    = "UTC"
}

resource "sumologic_collector" "https-collector_prd" {
  name        = "https-collector.prd"
  description = "Production Hosted HTTP/HTTPS Collector"
  timezone    = "UTC"
}

resource "sumologic_collector" "https-collector_stg" {
  name        = "https-collector.stg"
  description = "Staging Hosted HTTP/HTTPS Collector"
  timezone    = "UTC"
}

resource "sumologic_collector" "Infra-Test-Collector" {
  name        = "Infra-Test-Collector"
  description = "Collector used to test sending logs to https endpoint"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "int-fallback-dev" {
  name     = "int-fallback-dev"
  timezone = "Etc/UTC"
  fields   = { "cluster" = "int-fallback-dev" }
}

resource "sumologic_collector" "Lastpass_Test" {
  name     = "Lastpass Test"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "Lire" {
  name        = "Lire"
  description = "Lire API logs"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "malc-dev" {
  name        = "malc-dev"
  description = "Dev Collector for Malcolm Jones"
  category    = "malc"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "network-firewall-fortigate-nyhq-fwtc_Collector" {
  name     = "network-firewall-fortigate-nyhq-fwtc_Collector"
  timezone = "UTC"
}

resource "sumologic_collector" "network-firewall-fortigate-nyhq-fwtc_Collector_2" {
  name     = "network-firewall-fortigate-nyhq-fwtc_Collector_2"
  timezone = "UTC"
}

resource "sumologic_collector" "network-firewall-fortigate-nyhq-fwtc_Collector_3" {
  name     = "network-firewall-fortigate-nyhq-fwtc_Collector_3"
  timezone = "UTC"
}

resource "sumologic_collector" "network-firewall-fortigate-nyhq-fwtc_Collector_4" {
  name     = "network-firewall-fortigate-nyhq-fwtc_Collector_4"
  timezone = "UTC"
}

resource "sumologic_collector" "network-firewall-fortigate-nyhq-fwtc_Collector_5" {
  name     = "network-firewall-fortigate-nyhq-fwtc_Collector_5"
  timezone = "UTC"
}

resource "sumologic_collector" "network-firewall-fortigate-nyhq-fwtc_Collector_6" {
  name     = "network-firewall-fortigate-nyhq-fwtc_Collector_6"
  timezone = "UTC"
}

resource "sumologic_collector" "nimbul" {
  name        = "nimbul"
  description = "Nimbul Logs"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "NYTCO" {
  name        = "NYTCO"
  description = "Logs for NYTCO application"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Olaf_Temp" {
  name     = "Olaf Temp"
  timezone = "Etc/UTC"
}

resource "sumologic_collector" "PPD" {
  name        = "PPD"
  description = "Print Production & Distribution (B2B)"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "PPI" {
  name        = "PPI"
  description = "PPI application"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Redhat-Tower-Prod" {
  name        = "Redhat-Tower-Prod"
  description = "Redhat tower production logs. (Garth Reid)"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Search" {
  name        = "Search"
  description = "Endpont for Search API logs"
  timezone    = "Etc/UTC"
}

resource "sumologic_collector" "security-malware-domains_Collector" {
  name     = "security-malware-domains_Collector"
  timezone = "UTC"
}

resource "sumologic_collector" "security-symantec-csv_Collector" {
  name     = "security-symantec-csv_Collector"
  timezone = "UTC"
}

resource "sumologic_collector" "security-symantec-csv_Collector_2" {
  name     = "security-symantec-csv_Collector_2"
  timezone = "UTC"
}

resource "sumologic_collector" "SEO" {
  name        = "SEO"
  description = "spiderbites SEO research https://jira.nyt.net/browse/DV-3784"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Sugar" {
  name        = "Sugar"
  description = "Sugar CRM logs"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "TCEN__Time_Central_" {
  name        = "TCEN (Time Central)"
  description = "Times Central (tcen)"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "tipjar" {
  name        = "tipjar"
  description = "Confidential news tip app"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "Twistlock" {
  name        = "Twistlock"
  description = "Twistlock log collector"
  timezone    = "America/New_York"
}

resource "sumologic_collector" "uploadsvarnish_Collector" {
  name     = "uploadsvarnish_Collector"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector" {
  name     = "uploadswebandmobile-www-old_Collector"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_10" {
  name     = "uploadswebandmobile-www-old_Collector_10"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574440476" {
  name     = "uploadswebandmobile-www-old_Collector_1474574440476"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574494106" {
  name     = "uploadswebandmobile-www-old_Collector_1474574494106"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574542224" {
  name     = "uploadswebandmobile-www-old_Collector_1474574542224"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574609179" {
  name     = "uploadswebandmobile-www-old_Collector_1474574609179"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574666371" {
  name     = "uploadswebandmobile-www-old_Collector_1474574666371"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574723032" {
  name     = "uploadswebandmobile-www-old_Collector_1474574723032"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474574772742" {
  name     = "uploadswebandmobile-www-old_Collector_1474574772742"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474575151510" {
  name     = "uploadswebandmobile-www-old_Collector_1474575151510"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474575250208" {
  name     = "uploadswebandmobile-www-old_Collector_1474575250208"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474575291370" {
  name     = "uploadswebandmobile-www-old_Collector_1474575291370"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474575336152" {
  name     = "uploadswebandmobile-www-old_Collector_1474575336152"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474575915226" {
  name     = "uploadswebandmobile-www-old_Collector_1474575915226"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474575964903" {
  name     = "uploadswebandmobile-www-old_Collector_1474575964903"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576022931" {
  name     = "uploadswebandmobile-www-old_Collector_1474576022931"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576066474" {
  name     = "uploadswebandmobile-www-old_Collector_1474576066474"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576155165" {
  name     = "uploadswebandmobile-www-old_Collector_1474576155165"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576213333" {
  name     = "uploadswebandmobile-www-old_Collector_1474576213333"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576292141" {
  name     = "uploadswebandmobile-www-old_Collector_1474576292141"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576441004" {
  name     = "uploadswebandmobile-www-old_Collector_1474576441004"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576495067" {
  name     = "uploadswebandmobile-www-old_Collector_1474576495067"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576690118" {
  name     = "uploadswebandmobile-www-old_Collector_1474576690118"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474576956179" {
  name     = "uploadswebandmobile-www-old_Collector_1474576956179"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474577036574" {
  name     = "uploadswebandmobile-www-old_Collector_1474577036574"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599227601" {
  name     = "uploadswebandmobile-www-old_Collector_1474599227601"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599275107" {
  name     = "uploadswebandmobile-www-old_Collector_1474599275107"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599322501" {
  name     = "uploadswebandmobile-www-old_Collector_1474599322501"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599368688" {
  name     = "uploadswebandmobile-www-old_Collector_1474599368688"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599413166" {
  name     = "uploadswebandmobile-www-old_Collector_1474599413166"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599458672" {
  name     = "uploadswebandmobile-www-old_Collector_1474599458672"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599520306" {
  name     = "uploadswebandmobile-www-old_Collector_1474599520306"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599556574" {
  name     = "uploadswebandmobile-www-old_Collector_1474599556574"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599592039" {
  name     = "uploadswebandmobile-www-old_Collector_1474599592039"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599646547" {
  name     = "uploadswebandmobile-www-old_Collector_1474599646547"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599692649" {
  name     = "uploadswebandmobile-www-old_Collector_1474599692649"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474599735870" {
  name     = "uploadswebandmobile-www-old_Collector_1474599735870"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600081504" {
  name     = "uploadswebandmobile-www-old_Collector_1474600081504"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600126643" {
  name     = "uploadswebandmobile-www-old_Collector_1474600126643"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600177949" {
  name     = "uploadswebandmobile-www-old_Collector_1474600177949"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600222117" {
  name     = "uploadswebandmobile-www-old_Collector_1474600222117"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600276448" {
  name     = "uploadswebandmobile-www-old_Collector_1474600276448"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600318268" {
  name     = "uploadswebandmobile-www-old_Collector_1474600318268"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600359657" {
  name     = "uploadswebandmobile-www-old_Collector_1474600359657"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600408703" {
  name     = "uploadswebandmobile-www-old_Collector_1474600408703"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600448890" {
  name     = "uploadswebandmobile-www-old_Collector_1474600448890"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600489746" {
  name     = "uploadswebandmobile-www-old_Collector_1474600489746"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600532871" {
  name     = "uploadswebandmobile-www-old_Collector_1474600532871"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600592478" {
  name     = "uploadswebandmobile-www-old_Collector_1474600592478"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600640434" {
  name     = "uploadswebandmobile-www-old_Collector_1474600640434"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600683900" {
  name     = "uploadswebandmobile-www-old_Collector_1474600683900"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600730706" {
  name     = "uploadswebandmobile-www-old_Collector_1474600730706"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600774809" {
  name     = "uploadswebandmobile-www-old_Collector_1474600774809"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600837189" {
  name     = "uploadswebandmobile-www-old_Collector_1474600837189"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600891810" {
  name     = "uploadswebandmobile-www-old_Collector_1474600891810"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600949815" {
  name     = "uploadswebandmobile-www-old_Collector_1474600949815"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474600997574" {
  name     = "uploadswebandmobile-www-old_Collector_1474600997574"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601055033" {
  name     = "uploadswebandmobile-www-old_Collector_1474601055033"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601099802" {
  name     = "uploadswebandmobile-www-old_Collector_1474601099802"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601414221" {
  name     = "uploadswebandmobile-www-old_Collector_1474601414221"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601508322" {
  name     = "uploadswebandmobile-www-old_Collector_1474601508322"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601618549" {
  name     = "uploadswebandmobile-www-old_Collector_1474601618549"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601656568" {
  name     = "uploadswebandmobile-www-old_Collector_1474601656568"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601730438" {
  name     = "uploadswebandmobile-www-old_Collector_1474601730438"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601776854" {
  name     = "uploadswebandmobile-www-old_Collector_1474601776854"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601818856" {
  name     = "uploadswebandmobile-www-old_Collector_1474601818856"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601852961" {
  name     = "uploadswebandmobile-www-old_Collector_1474601852961"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601906429" {
  name     = "uploadswebandmobile-www-old_Collector_1474601906429"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474601966120" {
  name     = "uploadswebandmobile-www-old_Collector_1474601966120"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602007486" {
  name     = "uploadswebandmobile-www-old_Collector_1474602007486"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602044835" {
  name     = "uploadswebandmobile-www-old_Collector_1474602044835"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602099164" {
  name     = "uploadswebandmobile-www-old_Collector_1474602099164"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602143328" {
  name     = "uploadswebandmobile-www-old_Collector_1474602143328"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602189379" {
  name     = "uploadswebandmobile-www-old_Collector_1474602189379"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602267358" {
  name     = "uploadswebandmobile-www-old_Collector_1474602267358"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602341573" {
  name     = "uploadswebandmobile-www-old_Collector_1474602341573"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602387237" {
  name     = "uploadswebandmobile-www-old_Collector_1474602387237"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602448892" {
  name     = "uploadswebandmobile-www-old_Collector_1474602448892"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602490971" {
  name     = "uploadswebandmobile-www-old_Collector_1474602490971"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602523666" {
  name     = "uploadswebandmobile-www-old_Collector_1474602523666"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602572184" {
  name     = "uploadswebandmobile-www-old_Collector_1474602572184"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602623742" {
  name     = "uploadswebandmobile-www-old_Collector_1474602623742"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474602959633" {
  name     = "uploadswebandmobile-www-old_Collector_1474602959633"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603041615" {
  name     = "uploadswebandmobile-www-old_Collector_1474603041615"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603073851" {
  name     = "uploadswebandmobile-www-old_Collector_1474603073851"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603127356" {
  name     = "uploadswebandmobile-www-old_Collector_1474603127356"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603179487" {
  name     = "uploadswebandmobile-www-old_Collector_1474603179487"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603280463" {
  name     = "uploadswebandmobile-www-old_Collector_1474603280463"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603316167" {
  name     = "uploadswebandmobile-www-old_Collector_1474603316167"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603366072" {
  name     = "uploadswebandmobile-www-old_Collector_1474603366072"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603410928" {
  name     = "uploadswebandmobile-www-old_Collector_1474603410928"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603464144" {
  name     = "uploadswebandmobile-www-old_Collector_1474603464144"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603521674" {
  name     = "uploadswebandmobile-www-old_Collector_1474603521674"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603567236" {
  name     = "uploadswebandmobile-www-old_Collector_1474603567236"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603611074" {
  name     = "uploadswebandmobile-www-old_Collector_1474603611074"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603652316" {
  name     = "uploadswebandmobile-www-old_Collector_1474603652316"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603738282" {
  name     = "uploadswebandmobile-www-old_Collector_1474603738282"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603796784" {
  name     = "uploadswebandmobile-www-old_Collector_1474603796784"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603856621" {
  name     = "uploadswebandmobile-www-old_Collector_1474603856621"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603900268" {
  name     = "uploadswebandmobile-www-old_Collector_1474603900268"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603932579" {
  name     = "uploadswebandmobile-www-old_Collector_1474603932579"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474603991605" {
  name     = "uploadswebandmobile-www-old_Collector_1474603991605"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474604024093" {
  name     = "uploadswebandmobile-www-old_Collector_1474604024093"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474604105010" {
  name     = "uploadswebandmobile-www-old_Collector_1474604105010"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474604148145" {
  name     = "uploadswebandmobile-www-old_Collector_1474604148145"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474604193111" {
  name     = "uploadswebandmobile-www-old_Collector_1474604193111"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474631707676" {
  name     = "uploadswebandmobile-www-old_Collector_1474631707676"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474631738590" {
  name     = "uploadswebandmobile-www-old_Collector_1474631738590"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474631772161" {
  name     = "uploadswebandmobile-www-old_Collector_1474631772161"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474631807995" {
  name     = "uploadswebandmobile-www-old_Collector_1474631807995"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474631960544" {
  name     = "uploadswebandmobile-www-old_Collector_1474631960544"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632316725" {
  name     = "uploadswebandmobile-www-old_Collector_1474632316725"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632356052" {
  name     = "uploadswebandmobile-www-old_Collector_1474632356052"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632391608" {
  name     = "uploadswebandmobile-www-old_Collector_1474632391608"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632493330" {
  name     = "uploadswebandmobile-www-old_Collector_1474632493330"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632523362" {
  name     = "uploadswebandmobile-www-old_Collector_1474632523362"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632567138" {
  name     = "uploadswebandmobile-www-old_Collector_1474632567138"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632609443" {
  name     = "uploadswebandmobile-www-old_Collector_1474632609443"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632666666" {
  name     = "uploadswebandmobile-www-old_Collector_1474632666666"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632706236" {
  name     = "uploadswebandmobile-www-old_Collector_1474632706236"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632747187" {
  name     = "uploadswebandmobile-www-old_Collector_1474632747187"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632778177" {
  name     = "uploadswebandmobile-www-old_Collector_1474632778177"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632837195" {
  name     = "uploadswebandmobile-www-old_Collector_1474632837195"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632897576" {
  name     = "uploadswebandmobile-www-old_Collector_1474632897576"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632937510" {
  name     = "uploadswebandmobile-www-old_Collector_1474632937510"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474632984639" {
  name     = "uploadswebandmobile-www-old_Collector_1474632984639"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633030532" {
  name     = "uploadswebandmobile-www-old_Collector_1474633030532"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633060948" {
  name     = "uploadswebandmobile-www-old_Collector_1474633060948"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633118769" {
  name     = "uploadswebandmobile-www-old_Collector_1474633118769"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633150403" {
  name     = "uploadswebandmobile-www-old_Collector_1474633150403"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633258682" {
  name     = "uploadswebandmobile-www-old_Collector_1474633258682"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633287288" {
  name     = "uploadswebandmobile-www-old_Collector_1474633287288"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633353030" {
  name     = "uploadswebandmobile-www-old_Collector_1474633353030"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633418225" {
  name     = "uploadswebandmobile-www-old_Collector_1474633418225"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633458687" {
  name     = "uploadswebandmobile-www-old_Collector_1474633458687"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633515239" {
  name     = "uploadswebandmobile-www-old_Collector_1474633515239"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633562161" {
  name     = "uploadswebandmobile-www-old_Collector_1474633562161"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633636565" {
  name     = "uploadswebandmobile-www-old_Collector_1474633636565"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633665072" {
  name     = "uploadswebandmobile-www-old_Collector_1474633665072"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633700122" {
  name     = "uploadswebandmobile-www-old_Collector_1474633700122"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633761572" {
  name     = "uploadswebandmobile-www-old_Collector_1474633761572"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633826481" {
  name     = "uploadswebandmobile-www-old_Collector_1474633826481"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633883294" {
  name     = "uploadswebandmobile-www-old_Collector_1474633883294"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633913440" {
  name     = "uploadswebandmobile-www-old_Collector_1474633913440"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633959421" {
  name     = "uploadswebandmobile-www-old_Collector_1474633959421"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474633989686" {
  name     = "uploadswebandmobile-www-old_Collector_1474633989686"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634050682" {
  name     = "uploadswebandmobile-www-old_Collector_1474634050682"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634097268" {
  name     = "uploadswebandmobile-www-old_Collector_1474634097268"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634137985" {
  name     = "uploadswebandmobile-www-old_Collector_1474634137985"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634179530" {
  name     = "uploadswebandmobile-www-old_Collector_1474634179530"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634210210" {
  name     = "uploadswebandmobile-www-old_Collector_1474634210210"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634290549" {
  name     = "uploadswebandmobile-www-old_Collector_1474634290549"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634325046" {
  name     = "uploadswebandmobile-www-old_Collector_1474634325046"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634397436" {
  name     = "uploadswebandmobile-www-old_Collector_1474634397436"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634427159" {
  name     = "uploadswebandmobile-www-old_Collector_1474634427159"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634470405" {
  name     = "uploadswebandmobile-www-old_Collector_1474634470405"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634511645" {
  name     = "uploadswebandmobile-www-old_Collector_1474634511645"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634554190" {
  name     = "uploadswebandmobile-www-old_Collector_1474634554190"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634589642" {
  name     = "uploadswebandmobile-www-old_Collector_1474634589642"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634642502" {
  name     = "uploadswebandmobile-www-old_Collector_1474634642502"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634702284" {
  name     = "uploadswebandmobile-www-old_Collector_1474634702284"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634752452" {
  name     = "uploadswebandmobile-www-old_Collector_1474634752452"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634805400" {
  name     = "uploadswebandmobile-www-old_Collector_1474634805400"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634840480" {
  name     = "uploadswebandmobile-www-old_Collector_1474634840480"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634883967" {
  name     = "uploadswebandmobile-www-old_Collector_1474634883967"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474634922463" {
  name     = "uploadswebandmobile-www-old_Collector_1474634922463"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474635049222" {
  name     = "uploadswebandmobile-www-old_Collector_1474635049222"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474635089967" {
  name     = "uploadswebandmobile-www-old_Collector_1474635089967"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474635128621" {
  name     = "uploadswebandmobile-www-old_Collector_1474635128621"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474635161038" {
  name     = "uploadswebandmobile-www-old_Collector_1474635161038"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474635220571" {
  name     = "uploadswebandmobile-www-old_Collector_1474635220571"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_1474635263349" {
  name     = "uploadswebandmobile-www-old_Collector_1474635263349"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_2" {
  name     = "uploadswebandmobile-www-old_Collector_2"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_3" {
  name     = "uploadswebandmobile-www-old_Collector_3"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_4" {
  name     = "uploadswebandmobile-www-old_Collector_4"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_5" {
  name     = "uploadswebandmobile-www-old_Collector_5"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_6" {
  name     = "uploadswebandmobile-www-old_Collector_6"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_7" {
  name     = "uploadswebandmobile-www-old_Collector_7"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_8" {
  name     = "uploadswebandmobile-www-old_Collector_8"
  timezone = "UTC"
}

resource "sumologic_collector" "uploadswebandmobile-www-old_Collector_9" {
  name     = "uploadswebandmobile-www-old_Collector_9"
  timezone = "UTC"
}

resource "sumologic_http_source" "Akamai_Cloud_Monitor_Akamai_edge_connect" {
  name                         = "Akamai_edge_connect"
  category                     = "edgeconnect"
  collector_id                 = sumologic_collector.Akamai_Cloud_Monitor.id
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Artifactory_artifactory-dev" {
  name                         = "artifactory-dev"
  description                  = "Artifactory dev logs"
  category                     = "artifactory-dev"
  collector_id                 = sumologic_collector.Artifactory.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Artifactory_artifactory-prd" {
  name                         = "artifactory-prd"
  description                  = "Artifactory Production logs"
  category                     = "artifactory-prd"
  collector_id                 = sumologic_collector.Artifactory.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Artifactory_artifactory-stg" {
  name                         = "artifactory-stg"
  description                  = "Artifactory stg logs"
  category                     = "artifactory-stg"
  collector_id                 = sumologic_collector.Artifactory.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "atlassian-jira-events_atlassian-jira-events" {
  name                         = "atlassian-jira-events"
  category                     = "atlassian-jira-events"
  collector_id                 = sumologic_collector.atlassian-jira-events.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ATT__At_The_Times__att-prd" {
  name                         = "att-prd"
  description                  = "ATT production logs"
  category                     = "att-prd"
  collector_id                 = sumologic_collector.ATT__At_The_Times_.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ATT__At_The_Times__att-stg" {
  name                         = "att-stg"
  description                  = "ATT staging logs"
  category                     = "att-stg"
  collector_id                 = sumologic_collector.ATT__At_The_Times_.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "AWSMA_AWSMA_CT-DEV_CloudWatch_Logs" {
  name                         = "AWSMA CT-DEV CloudWatch Logs"
  category                     = "AWSMA-DEV-CW"
  collector_id                 = sumologic_collector.AWSMA.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "AWSMA_AWSMA_CT-PRD_CloudWatch_Logs" {
  name                         = "AWSMA CT-PRD CloudWatch Logs"
  category                     = "AWSMA-PRD-CW"
  collector_id                 = sumologic_collector.AWSMA.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "AWSMA_AWSMA_CT-STG_CloudWatch_Logs" {
  name                         = "AWSMA CT-STG CloudWatch Logs"
  category                     = "AWSMA-STG-CW"
  collector_id                 = sumologic_collector.AWSMA.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "AzureADLogs_AzureAD" {
  name                         = "AzureAD"
  category                     = "AzureSignInEvents"
  collector_id                 = sumologic_collector.AzureADLogs.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "AzureADLogs_AzureADLogs" {
  name                         = "AzureADLogs"
  category                     = "AzureADLogs"
  collector_id                 = sumologic_collector.AzureADLogs.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Business-PPI_business-ppi-dev" {
  name                         = "business-ppi-dev"
  description                  = "Business PPI application developmenet logs"
  category                     = "business-ppi"
  collector_id                 = sumologic_collector.Business-PPI.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Business-PPI_business-ppi-prd" {
  name                         = "business-ppi-prd"
  description                  = "Business PPI application production logs"
  category                     = "business-ppi"
  collector_id                 = sumologic_collector.Business-PPI.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Business-PPI_business-ppi-stg" {
  name                         = "business-ppi-stg"
  description                  = "Business PPI application staging logs"
  category                     = "business-ppi"
  collector_id                 = sumologic_collector.Business-PPI.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Care_Connect_care-connect-dev" {
  name                         = "care-connect-dev"
  description                  = "Customer care connect dev logs"
  category                     = "care-connect-dev"
  collector_id                 = sumologic_collector.Care_Connect.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Care_Connect_care-connect-prd" {
  name                         = "care-connect-prd"
  description                  = "Customer Care connect app production logs"
  category                     = "care-connect-prd"
  collector_id                 = sumologic_collector.Care_Connect.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Care_Connect_care-connect-stg" {
  name                         = "care-connect-stg"
  description                  = "Customer care connect app staging logs"
  category                     = "care-connect-stg"
  collector_id                 = sumologic_collector.Care_Connect.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Care_Services_care-service-prd" {
  name                         = "care-service-prd"
  description                  = "Care service production logs"
  category                     = "care-service-prd"
  collector_id                 = sumologic_collector.Care_Services.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Care_Services_care-service-stg" {
  name                         = "care-service-stg"
  description                  = "Care service staging logs"
  category                     = "care-service-stg"
  collector_id                 = sumologic_collector.Care_Services.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Care_Services_care-services-dev" {
  name                         = "care-services-dev"
  description                  = "Care service dev logs"
  category                     = "care-services-dev"
  collector_id                 = sumologic_collector.Care_Services.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "CMOTS_cmots-dev" {
  name                         = "cmots-dev"
  description                  = "CMOSTS/Magnolia dev logs"
  category                     = "cmots-dev"
  collector_id                 = sumologic_collector.CMOTS.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "CMOTS_cmots-prd" {
  name                         = "cmots-prd"
  description                  = "CMOTS/Magnolia Prod logs"
  category                     = "cmots-prd"
  collector_id                 = sumologic_collector.CMOTS.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "CMOTS_cmots-stg" {
  name                         = "cmots-stg"
  description                  = "CMOTS/Magnolia stage logs"
  category                     = "cmots-stg"
  collector_id                 = sumologic_collector.CMOTS.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "CMS_cms-fallback-dev" {
  name                         = "cms-fallback-dev"
  category                     = "cms-fallback-dev"
  collector_id                 = sumologic_collector.CMS.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "CMS_cms-fallback-prd" {
  name                         = "cms-fallback-prd"
  category                     = "cms-fallback-prd"
  collector_id                 = sumologic_collector.CMS.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "CMS_cms-fallback-stg" {
  name                         = "cms-fallback-stg"
  category                     = "cms-fallback-stg"
  collector_id                 = sumologic_collector.CMS.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "DV_Goblin_Bot_goblin-bot_dev_stg" {
  name                         = "goblin-bot dev/stg"
  collector_id                 = sumologic_collector.DV_Goblin_Bot.id
  multiline_processing_enabled = true
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "DV_Goblin_Bot_goblin-bot_prd" {
  name                         = "goblin-bot prd"
  collector_id                 = sumologic_collector.DV_Goblin_Bot.id
  multiline_processing_enabled = true
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "DV_SSM_API_ssm-api-dev" {
  name                         = "ssm-api-dev"
  category                     = "dev/ssm-api"
  collector_id                 = sumologic_collector.DV_SSM_API.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "DV_SSM_API_ssm-api-prd" {
  name                         = "ssm-api-prd"
  category                     = "prd/ssm-api"
  collector_id                 = sumologic_collector.DV_SSM_API.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "DV_SSM_API_ssm-api-stg" {
  name                         = "ssm-api-stg"
  category                     = "stg/ssm-api"
  collector_id                 = sumologic_collector.DV_SSM_API.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "dv-jenkins_dv-jenkins-dev" {
  name                         = "dv-jenkins-dev"
  description                  = "DV dev jenkins logs"
  category                     = "dv-jenkins-dev"
  collector_id                 = sumologic_collector.dv-jenkins.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "dv-jenkins_dv-jenkins-prd" {
  name                         = "dv-jenkins-prd"
  description                  = "DV Jenkins production logs"
  category                     = "dv-jenkins-prd"
  collector_id                 = sumologic_collector.dv-jenkins.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ECMCORE_ecmcore-dev" {
  name                         = "ecmcore-dev"
  category                     = "ecmcore-dev"
  collector_id                 = sumologic_collector.ECMCORE.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ECMCORE_ecmcore-prd" {
  name                         = "ecmcore-prd"
  description                  = "Ecmcore production logs"
  category                     = "ecmcore-prd"
  collector_id                 = sumologic_collector.ECMCORE.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ECMCORE_ecmcore-stg" {
  name                         = "ecmcore-stg"
  description                  = "Ecmcore staging logs"
  category                     = "ecmcore-stg"
  collector_id                 = sumologic_collector.ECMCORE.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Ecomm-Payflow_ecommerce-ecmcore-http" {
  name                         = "ecommerce-ecmcore-http"
  description                  = "Ecomm core https collector"
  category                     = "ecommerce-ecmcore-core"
  collector_id                 = sumologic_collector.Ecomm-Payflow.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Ecomm-Payflow_ecommerce-payflow-api-stg" {
  name                         = "ecommerce-payflow-api-stg"
  description                  = "Ecommerce payflow api staging logs"
  category                     = "ecommerce-payflow-api-stg"
  collector_id                 = sumologic_collector.Ecomm-Payflow.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Ecomm-Payflow_ecommerce-payflow-http" {
  name                         = "ecommerce-payflow-http"
  description                  = "Ecomm payflow http"
  category                     = "ecommerce-payflow-api"
  collector_id                 = sumologic_collector.Ecomm-Payflow.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ECR_ecr-dev" {
  name                         = "ecr-dev"
  description                  = "ecomm reporting dev logs"
  category                     = "ecr-dev"
  collector_id                 = sumologic_collector.ECR.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ECR_ecr-prd" {
  name                         = "ecr-prd"
  description                  = "Ecomm reporting production"
  category                     = "ecr-prd"
  collector_id                 = sumologic_collector.ECR.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "ECR_ecr-stg" {
  name                         = "ecr-stg"
  description                  = "Ecomm reporting staging"
  category                     = "ecr-stg"
  collector_id                 = sumologic_collector.ECR.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "File_Uploads_lga1epwcdc011secevents_csv" {
  name                         = "lga1epwcdc011secevents.csv"
  category                     = "uploads/other"
  collector_id                 = sumologic_collector.File_Uploads.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "File_Uploads_xaa" {
  name                         = "xaa"
  category                     = "AzureSignInEvents"
  collector_id                 = sumologic_collector.File_Uploads.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "File_Uploads_xaa_2" {
  name                         = "xaa_2"
  category                     = "AzureSignInEvents"
  collector_id                 = sumologic_collector.File_Uploads.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "File_Uploads_xab" {
  name                         = "xab"
  category                     = "AzureSignInEvents"
  collector_id                 = sumologic_collector.File_Uploads.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "FireEye_FireEye" {
  name                         = "FireEye"
  category                     = "FireEye"
  collector_id                 = sumologic_collector.FireEye.id
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "FTPS_ftps-dev-syslog" {
  name                         = "ftps-dev-syslog"
  description                  = "FTPS dev syslog"
  category                     = "ftp-dev-syslog"
  collector_id                 = sumologic_collector.FTPS.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "FTPS_ftps-prd-syslog" {
  name                         = "ftps-prd-syslog"
  description                  = "FTPS production syslog"
  category                     = "ftps-prd-syslog"
  collector_id                 = sumologic_collector.FTPS.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "FTPS_ftps-stg-syslog" {
  name                         = "ftps-stg-syslog"
  description                  = "FTPS staging syslog"
  category                     = "ftps-stg-syslog"
  collector_id                 = sumologic_collector.FTPS.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "GKE_Samizdat_Dev" {
  name                         = "Samizdat Dev"
  category                     = "webandmobile-samizdat"
  collector_id                 = sumologic_collector.GKE.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = false
  timezone                     = "Etc/UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "GKE_Samizdat_Prd" {
  name                         = "Samizdat Prd"
  category                     = "webandmobile-samizdat"
  collector_id                 = sumologic_collector.GKE.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = false
  timezone                     = "Etc/UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_alerts_Google_Apps_Gsuite_Alerts" {
  name                         = "Google Apps Gsuite Alerts"
  category                     = "google_apps_gsuite_alerts"
  collector_id                 = sumologic_collector.google_apps_gsuite_alerts.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
  default_date_formats {
    format  = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    locator = "\\\"createTime\\\":(.*),"
  }
}

resource "sumologic_http_source" "google_apps_gsuite_audit_G_Suite_Apps_Audit_Admin" {
  name                         = "G Suite Apps Audit Admin"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_G_Suite_Apps_Audit_Calendar" {
  name                         = "G Suite Apps Audit Calendar"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_G_Suite_Apps_Audit_Drive" {
  name                         = "G Suite Apps Audit Drive"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_G_Suite_Apps_Audit_Google_" {
  name                         = "G Suite Apps Audit Google+"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_G_Suite_Apps_Audit_Groups" {
  name                         = "G Suite Apps Audit Groups"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_G_Suite_Apps_Audit_Login" {
  name                         = "G Suite Apps Audit Login"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_GSuite_Audit_Mobile" {
  name                         = "GSuite Audit Mobile"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "google_apps_gsuite_audit_GSuite_Audit_Rules" {
  name                         = "GSuite Audit Rules"
  category                     = "google_apps_gsuite_audit"
  collector_id                 = sumologic_collector.google_apps_gsuite_audit.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_Attribute_Production" {
  name                         = "Attribute Production"
  description                  = "Attribute INT App INFRA-70893"
  category                     = "attribute-prd"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = true
  timezone                     = "UTC"
  host_name                    = "attribute-prd"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_Attribute_Staging" {
  name                         = "Attribute Staging"
  description                  = "Attribute INT APP INFRA-70893"
  category                     = "attribute-stg"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = true
  timezone                     = "UTC"
  host_name                    = "attribute-stg"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_Custom_App" {
  name                         = "Custom App"
  category                     = "elamarantest"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = false
  timezone                     = "Etc/UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_Custom_App_2" {
  name                         = "Custom App_2"
  category                     = "elamarantest"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = false
  timezone                     = "Etc/UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_Custom_App_3" {
  name                         = "Custom App_3"
  category                     = "elamarantest"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = false
  timezone                     = "Etc/UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_elections_logs" {
  name                         = "elections logs"
  description                  = "INFRA-74223"
  category                     = "elections-prd"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising-waf_prd" {
  name                         = "fastly-advertising-waf/prd"
  description                  = "fastly advertising service waf log"
  category                     = "fastly-advertising-waf/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising-waf_stg" {
  name                         = "fastly-advertising-waf/stg"
  description                  = "advertising waf log endpoint"
  category                     = "fastly-advertising-waf/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising_prd" {
  name                         = "fastly-advertising/prd"
  description                  = "advertising prod fastly logs"
  category                     = "fastly-advertising/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising_stg" {
  name                         = "fastly-advertising/stg"
  description                  = "advertising staging fastly logs"
  category                     = "fastly-advertising/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-co-prd" {
  name                         = "fastly-co-prd"
  description                  = "for co.prd fastly service"
  category                     = "prd/co-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-co-stg" {
  name                         = "fastly-co-stg"
  description                  = "for fastly co.dev and co.stg services"
  category                     = "stg/co-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-cooking-prd" {
  name                         = "fastly-cooking-prd"
  description                  = "for fastly cooking.prd service"
  category                     = "prd/cooking-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-cooking-stg" {
  name                         = "fastly-cooking-stg"
  description                  = "for cooking.dev and cooking.stg fastly services"
  category                     = "stg/cooking-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-g1-prd" {
  name                         = "fastly-g1-prd"
  description                  = "Infra-71078"
  category                     = "fastly-g1-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-g1-stg" {
  name                         = "fastly-g1-stg"
  description                  = "Infra-71078"
  category                     = "fastly-g1-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-gcs-assets_prd" {
  name                         = "fastly-gcs-assets/prd"
  description                  = "Fastly gcs assests production"
  category                     = "fastly-gcs-assets/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-gcs-assets_stg" {
  name                         = "fastly-gcs-assets/stg"
  description                  = "Fastly GCS assets staging"
  category                     = "fastly-gcs-assets/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-int_prd" {
  name                         = "fastly-int/prd"
  description                  = "Fastly int.nyt.com production"
  category                     = "fastly-int/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-int_stg" {
  name                         = "fastly-int/stg"
  description                  = "Fastly int.nyt.com staging logs"
  category                     = "fastly-int/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg-purge_prd" {
  name                         = "fastly-mktg-purge/prd"
  description                  = "Fastly Maketing Purge production"
  category                     = "fastly-mktg-purge/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg-purge_stg" {
  name                         = "fastly-mktg-purge/stg"
  description                  = "Fastly Marketing Purge staging"
  category                     = "fastly-mktg-purge/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg_prd" {
  name                         = "fastly-mktg/prd"
  description                  = "Fastly Marketing production"
  category                     = "fastly-mktg/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg_stg" {
  name                         = "fastly-mktg/stg"
  description                  = "Fastly Marketing staging"
  category                     = "fastly-mktg/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mwcm_prd" {
  name                         = "fastly-mwcm/prd"
  description                  = "MWCM fastly production logs"
  category                     = "fastly-mwcm/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mwcm_stg" {
  name                         = "fastly-mwcm/stg"
  description                  = "MWCM fastly staging logs"
  category                     = "fastly-mwcm/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-nytco_prd" {
  name                         = "fastly-nytco/prd"
  description                  = "NYTCO Production fastly logs"
  category                     = "fastly-nytco/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-nytco_stg" {
  name                         = "fastly-nytco/stg"
  description                  = "NYTCO Fastly staging logs"
  category                     = "fastly-nytco/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-rss_prd" {
  name                         = "fastly-rss/prd"
  description                  = "Fastly RSS Production logs"
  category                     = "fastly-rss/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-rss_stg" {
  name                         = "fastly-rss/stg"
  description                  = "Fastly RSS Staging logs"
  category                     = "fastly-rss/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static-prd" {
  name                         = "fastly-static-prd"
  description                  = "Fastly Static Error Logs"
  category                     = "fastly-static-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static-stg" {
  name                         = "fastly-static-stg"
  description                  = "Fasty static error logs"
  category                     = "fastly-static-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static_prd" {
  name                         = "fastly-static/prd"
  description                  = "Fastly static production"
  category                     = "fastly-static/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static_stg" {
  name                         = "fastly-static/stg"
  description                  = "Fastly static staging"
  category                     = "fastly-static/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-waf-apps_prd" {
  name                         = "fastly-waf-apps/prd"
  description                  = "Fastly WAF App production logs"
  category                     = "fastly-waf-apps/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-waf-apps_stg" {
  name                         = "fastly-waf-apps/stg"
  description                  = "Fastly WAF APP Staging logs"
  category                     = "fastly-waf-apps/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www-purge_prd" {
  name                         = "fastly-www-purge/prd"
  description                  = "Fastly WWW purge production DV-2179"
  category                     = "fastly-www-purge/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www-purge_stg" {
  name                         = "fastly-www-purge/stg"
  description                  = "fastly-www-purge/stg Fastly WWW purge staging DV-2179"
  category                     = "fastly-www-purge/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www_prd" {
  name                         = "fastly-www/prd"
  description                  = "Fastly www production"
  category                     = "fastly-www/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www_stg" {
  name                         = "fastly-www/stg"
  description                  = "Fastly www staging"
  category                     = "fastly-www/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_homedelivery-prd" {
  name                         = "homedelivery-prd"
  description                  = "homedelivery prod fastly logs"
  category                     = "prd/homedelivery-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_homedelivery-stg" {
  name                         = "homedelivery-stg"
  description                  = "homedelivery staging fastly logs"
  category                     = "stg/homedelivery-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_int_nyt_com" {
  name                         = "int.nyt.com"
  category                     = "int.nyt.com"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_int_stg_nyt_com" {
  name                         = "int.stg.nyt.com"
  category                     = "int.stg.nyt.com"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_intf-w_nyt_com" {
  name                         = "intf-w.nyt.com"
  category                     = "intf-w.nyt.com"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_intf_nyt_com" {
  name                         = "intf.nyt.com"
  category                     = "intf.nyt.com"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_lastpass" {
  name                         = "lastpass"
  description                  = "LastPass logs"
  category                     = "lastpass"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_Lire" {
  name                         = "Lire"
  description                  = "Lire Auth logs"
  category                     = "prd/ecommerce/auth_event_publisher"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = true
  default_date_formats {
    format  = "yyyyMMdd'T'HH:mm:ssZZZZ"
    locator = "time:(.*)"
  }
}

resource "sumologic_http_source" "HTTP_Lire_Staging" {
  name                         = "Lire Staging"
  description                  = "Lire Auth Staging logs"
  category                     = "stg/ecommerce/auth_event_publisher"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = true
  default_date_formats {
    format  = "yyyyMMdd'T'HH:mm:ssZZZZ"
    locator = "time:(.*)"
  }
}

resource "sumologic_http_source" "HTTP_mobilewebprd-www" {
  name                         = "mobilewebprd-www"
  category                     = "mobilewebprd-www"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mobilewebstg-www" {
  name                         = "mobilewebstg-www"
  category                     = "mobilewebstg-www"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mwcm-dev" {
  name                         = "mwcm-dev"
  description                  = "Fastly mwcm-dev"
  category                     = "mwcm-dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mwcm-prd" {
  name                         = "mwcm-prd"
  description                  = "Fastly mwcm-prd"
  category                     = "mwcm-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mwcm-stg" {
  name                         = "mwcm-stg"
  description                  = "Fastly mwcm-stg"
  category                     = "mwcm-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_myaccount-prd" {
  name                         = "myaccount-prd"
  category                     = "prd/myaccount-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_myaccount-stg" {
  name                         = "myaccount-stg"
  category                     = "stg/myaccount-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_platforms_nytimes_com-prd" {
  name                         = "platforms.nytimes.com-prd"
  category                     = "platforms.nytimes.com-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_prd_fastly-query" {
  name                         = "prd/fastly-query"
  category                     = "prd/fastly-query"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_project-vi-alpha-dev" {
  name                         = "project-vi-alpha-dev"
  category                     = "webandmobile-projectvi-dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = false
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_project-vi-alpha-prd" {
  name                         = "project-vi-alpha-prd"
  category                     = "webandmobile-projectvi-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = false
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_samizdat-fluentd" {
  name                         = "samizdat-fluentd"
  category                     = "samizdat-dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  host_name                    = "samizdat-fluentd"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_stg-ecommerce-payflow" {
  name                         = "stg-ecommerce-payflow"
  category                     = "stg/ecommerce/payflow"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_stg_fastly-query" {
  name                         = "stg/fastly-query"
  category                     = "stg/fastly-query"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_tipjar-prd" {
  name                         = "tipjar-prd"
  description                  = "Tipjar Prd Kubernetes Logs"
  category                     = "prd/tipjar"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_tipjar-stg" {
  name                         = "tipjar-stg"
  description                  = "Tipjar Stg Kubernetes Logs"
  category                     = "stg/tipjar"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_tokenization-app-dev" {
  name                         = "tokenization-app-dev"
  category                     = "tokenization"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_tokenization-app-prd" {
  name                         = "tokenization-app-prd"
  description                  = "tokenization app prd"
  category                     = "tokenization"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_tokenization-app-stg" {
  name                         = "tokenization-app-stg"
  category                     = "tokenization"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_vault-prd" {
  name                         = "vault-prd"
  description                  = "Vault Logs - Delivery Engineering Secrets Management Tool"
  category                     = "prd/vault"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_vault-stg" {
  name                         = "vault-stg"
  description                  = "Vault Logs - Delivery Engineering Secrets Management Tool"
  category                     = "stg/vault"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_video-service" {
  name                         = "video-service"
  description                  = "Fastly video service"
  category                     = "video-service"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_video-service-stg" {
  name                         = "video-service-stg"
  description                  = "Fastly video service staging"
  category                     = "video-service-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_webandmobile-samizdat-prd" {
  name                         = "webandmobile-samizdat-prd"
  description                  = "Samizdat prod logs from GCP"
  category                     = "webandmobile-samizdat"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = true
  manual_prefix_regexp         = "^level:[A-Z]\\s+date:\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d{3}Z\\s+message:.*"
}

resource "sumologic_http_source" "HTTP_webandmobile-www" {
  name                         = "webandmobile-www"
  category                     = "webandmobile-www"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_webprd-www" {
  name                         = "webprd-www"
  category                     = "webprd-www"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_webstg-www" {
  name                         = "webstg-www"
  category                     = "webstg-www"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_dev_ecommerce-ecmcore-core" {
  name                         = "ecommerce-ecmcore-core"
  description                  = "Ecommer ecmcore logs via HTTP"
  category                     = "ecommerce-ecmcore-core"
  collector_id                 = sumologic_collector.https-collector_dev.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_dev_infra-test" {
  name                         = "infra-test"
  description                  = "Testing"
  category                     = "infra-test"
  collector_id                 = sumologic_collector.https-collector_dev.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = true
}

resource "sumologic_http_source" "https-collector_dev_linux-syslog" {
  name                         = "linux-syslog"
  description                  = "testing linux-syslog"
  category                     = "linux-syslog"
  collector_id                 = sumologic_collector.https-collector_dev.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_dev_proof-of-concept" {
  name                         = "proof-of-concept"
  description                  = "INFRA-72180"
  category                     = "proof-of-concept"
  collector_id                 = sumologic_collector.https-collector_dev.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  host_name                    = "proof-of-concept"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_dev_windows-dc" {
  name                         = "windows-dc"
  category                     = "windows-dc"
  collector_id                 = sumologic_collector.https-collector_dev.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_axonius-prd" {
  name                         = "axonius-prd"
  category                     = "prd/axonius"
  collector_id                 = sumologic_collector.https-collector_prd.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_security-amp" {
  name                         = "security-amp"
  category                     = "security-amp"
  collector_id                 = sumologic_collector.https-collector_prd.id
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
  default_date_formats {
    format  = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
    locator = "\\\"date\\\":(.*), \""
  }
}

resource "sumologic_http_source" "https-collector_prd_security-fireeye-nyhq" {
  name                         = "security-fireeye-nyhq"
  category                     = "security-fireeye"
  collector_id                 = sumologic_collector.https-collector_prd.id
  multiline_processing_enabled = false
  timezone                     = "Etc/UTC"
  host_name                    = "http-collector.prd"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_security-gapp-calendar" {
  name                         = "security-gapp-calendar"
  category                     = "security-gapp-calendar"
  collector_id                 = sumologic_collector.https-collector_prd.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_security-gapp-drive" {
  name                         = "security-gapp-drive"
  category                     = "security-gapp-drive"
  collector_id                 = sumologic_collector.https-collector_prd.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_security-gapp-login" {
  name                         = "security-gapp-login"
  category                     = "security-gapp-login"
  collector_id                 = sumologic_collector.https-collector_prd.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_security-gapp-token" {
  name                         = "security-gapp-token"
  category                     = "security-gapp-token"
  collector_id                 = sumologic_collector.https-collector_prd.id
  content_type                 = "GoogleAppsAuditPushNotification"
  multiline_processing_enabled = false
  timezone                     = "UTC"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_prd_security-qualys-nyhq" {
  name                         = "security-qualys-nyhq"
  category                     = "security-qualys"
  collector_id                 = sumologic_collector.https-collector_prd.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  host_name                    = "http-collector.prd"
  use_autoline_matching        = true
  automatic_date_parsing       = false
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "https-collector_stg_publishing-cms-http-collector-stg" {
  name                         = "publishing-cms-http-collector-stg"
  category                     = "publishing-cms-http-collector"
  collector_id                 = sumologic_collector.https-collector_stg.id
  multiline_processing_enabled = false
  timezone                     = "UTC"
  host_name                    = "http-collector.stg"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = true
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev__default-metrics_" {
  name                         = "(default-metrics)"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_apiserver-metrics" {
  name                         = "apiserver-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_control-plane-metrics" {
  name                         = "control-plane-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_events" {
  name                         = "events"
  category                     = "int-fallback-dev/events"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_kube-controller-manager-metrics" {
  name                         = "kube-controller-manager-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_kube-scheduler-metrics" {
  name                         = "kube-scheduler-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_kube-state-metrics" {
  name                         = "kube-state-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_kubelet-metrics" {
  name                         = "kubelet-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_logs" {
  name                         = "logs"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "int-fallback-dev_node-exporter-metrics" {
  name                         = "node-exporter-metrics"
  collector_id                 = sumologic_collector.int-fallback-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Lastpass_Test_Lastpass_test" {
  name                         = "Lastpass_test"
  category                     = "lastpass"
  collector_id                 = sumologic_collector.Lastpass_Test.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Lire_lire-api-error" {
  name                         = "lire-api-error"
  description                  = "Lire api error logs"
  category                     = "lire-api-error"
  collector_id                 = sumologic_collector.Lire.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Lire_lire-api-stg-error" {
  name                         = "lire-api-stg-error"
  description                  = "Lire api staging error"
  category                     = "lire-api-stg-error"
  collector_id                 = sumologic_collector.Lire.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Lire_lire-prd-iad" {
  name                         = "lire-prd-iad"
  description                  = "Lire production logs"
  category                     = "lire-prd-iad"
  collector_id                 = sumologic_collector.Lire.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Lire_lire-stg-iad" {
  name                         = "lire-stg-iad"
  description                  = "Lire staging logs"
  category                     = "lire-stg-iad"
  collector_id                 = sumologic_collector.Lire.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "malc-dev_malc-dev-continuous" {
  name                         = "malc-dev-continuous"
  category                     = "malc-dev"
  collector_id                 = sumologic_collector.malc-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "malc-dev_malc-dev-frequent" {
  name                         = "malc-dev-frequent"
  category                     = "malc-dev"
  collector_id                 = sumologic_collector.malc-dev.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  fields = {
    data_tier = "frequent"
  }
  force_timezone = false
}

resource "sumologic_http_source" "network-firewall-fortigate-nyhq-fwtc_Collector_network-firewall-fortigate-nyhq-fwtc" {
  name                         = "network-firewall-fortigate-nyhq-fwtc"
  category                     = "network-firewall-fortigate-nyhq-fwtc"
  collector_id                 = sumologic_collector.network-firewall-fortigate-nyhq-fwtc_Collector.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "network-firewall-fortigate-nyhq-fwtc_Collector_2_network-firewall-fortigate-nyhq-fwtc" {
  name                         = "network-firewall-fortigate-nyhq-fwtc"
  category                     = "network-firewall-fortigate-nyhq-fwtc"
  collector_id                 = sumologic_collector.network-firewall-fortigate-nyhq-fwtc_Collector_2.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "network-firewall-fortigate-nyhq-fwtc_Collector_3_network-firewall-fortigate-nyhq-fwtc" {
  name                         = "network-firewall-fortigate-nyhq-fwtc"
  category                     = "network-firewall-fortigate-nyhq-fwtc"
  collector_id                 = sumologic_collector.network-firewall-fortigate-nyhq-fwtc_Collector_3.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "network-firewall-fortigate-nyhq-fwtc_Collector_4_network-firewall-fortigate-nyhq-fwtc" {
  name                         = "network-firewall-fortigate-nyhq-fwtc"
  category                     = "network-firewall-fortigate-nyhq-fwtc"
  collector_id                 = sumologic_collector.network-firewall-fortigate-nyhq-fwtc_Collector_4.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "network-firewall-fortigate-nyhq-fwtc_Collector_5_network-firewall-fortigate-nyhq-fwtc" {
  name                         = "network-firewall-fortigate-nyhq-fwtc"
  category                     = "network-firewall-fortigate-nyhq-fwtc"
  collector_id                 = sumologic_collector.network-firewall-fortigate-nyhq-fwtc_Collector_5.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "network-firewall-fortigate-nyhq-fwtc_Collector_6_network-firewall-fortigate-nyhq-fwtc" {
  name                         = "network-firewall-fortigate-nyhq-fwtc"
  category                     = "network-firewall-fortigate-nyhq-fwtc"
  collector_id                 = sumologic_collector.network-firewall-fortigate-nyhq-fwtc_Collector_6.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "nimbul_nimbul-dev" {
  name                         = "nimbul-dev"
  description                  = "Nimbul Development logs"
  category                     = "nimbul-dev"
  collector_id                 = sumologic_collector.nimbul.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "nimbul_nimbul-prd" {
  name                         = "nimbul-prd"
  description                  = "NImbul Production logs"
  category                     = "nimbul-prd"
  collector_id                 = sumologic_collector.nimbul.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "NYTCO_nytco-prd" {
  name                         = "nytco-prd"
  description                  = "NYTCO production logs"
  category                     = "nytco-prd"
  collector_id                 = sumologic_collector.NYTCO.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "NYTCO_nytco-stg" {
  name                         = "nytco-stg"
  description                  = "nytco staging application logs"
  category                     = "nytco-stg"
  collector_id                 = sumologic_collector.NYTCO.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Olaf_Temp_Olaf_Temp" {
  name                         = "Olaf Temp"
  category                     = "THG/sourceCategories"
  collector_id                 = sumologic_collector.Olaf_Temp.id
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_dist-batch-dev" {
  name                         = "dist-batch-dev"
  category                     = "dist-batch"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_dist-batch-prd" {
  name                         = "dist-batch-prd"
  category                     = "dist-batch"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_dist-batch-stg" {
  name                         = "dist-batch-stg"
  category                     = "dist-batch"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_dist-dev" {
  name                         = "dist-dev"
  description                  = "Distribution dev logs"
  category                     = "dist"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_dist-prd" {
  name                         = "dist-prd"
  description                  = "Distribution Production logs"
  category                     = "dist"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_dist-stg" {
  name                         = "dist-stg"
  description                  = "Distribution staging logs"
  category                     = "dist"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_ppd-ink-ce-dev" {
  name                         = "ppd-ink-ce-dev"
  category                     = "ppd-ink-ce"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_ppd-ink-ce-prd" {
  name                         = "ppd-ink-ce-prd"
  category                     = "ppd-ink-ce"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_ppd-ink-ce-stg" {
  name                         = "ppd-ink-ce-stg"
  category                     = "ppd-ink-ce"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_ppd-ink-dev" {
  name                         = "ppd-ink-dev"
  description                  = "Print Production Distribution dev logs"
  category                     = "ppd-ink"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_ppd-ink-prd" {
  name                         = "ppd-ink-prd"
  description                  = "Print Production and Distribution production logs"
  category                     = "ppd-ink"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "PPD_ppd-ink-stg" {
  name                         = "ppd-ink-stg"
  description                  = "Print Production and Distribution staging logs"
  category                     = "ppd-ink"
  collector_id                 = sumologic_collector.PPD.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Redhat-Tower-Prod_redhat-tower-dev" {
  name                         = "redhat-tower-dev"
  category                     = "redhat-tower-dev"
  collector_id                 = sumologic_collector.Redhat-Tower-Prod.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Redhat-Tower-Prod_redhat-tower-prd" {
  name                         = "redhat-tower-prd"
  category                     = "redhat-tower-prd"
  collector_id                 = sumologic_collector.Redhat-Tower-Prod.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Redhat-Tower-Prod_redhat-tower-stg" {
  name                         = "redhat-tower-stg"
  category                     = "redhat-tower-stg"
  collector_id                 = sumologic_collector.Redhat-Tower-Prod.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Search_search-api-dev" {
  name                         = "search-api-dev"
  description                  = "Search API dev logs"
  category                     = "search-api-dev"
  collector_id                 = sumologic_collector.Search.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Search_search-api-prd" {
  name                         = "search-api-prd"
  category                     = "search-api-prd"
  collector_id                 = sumologic_collector.Search.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Search_search-api-stg" {
  name                         = "search-api-stg"
  description                  = "Search API staging"
  category                     = "search-api-stg"
  collector_id                 = sumologic_collector.Search.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "security-malware-domains_Collector_security-malware-domains" {
  name                         = "security-malware-domains"
  category                     = "security-malware-domains"
  collector_id                 = sumologic_collector.security-malware-domains_Collector.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "security-symantec-csv_Collector_security-symantec-csv" {
  name                         = "security-symantec-csv"
  category                     = "security-symantec-csv"
  collector_id                 = sumologic_collector.security-symantec-csv_Collector.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "security-symantec-csv_Collector_2_security-symantec-csv" {
  name                         = "security-symantec-csv"
  category                     = "security-symantec-csv"
  collector_id                 = sumologic_collector.security-symantec-csv_Collector_2.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "SEO_fastly-spiderbites_prd" {
  name                         = "fastly-spiderbites/prd"
  description                  = "sumo log for fastly spiderbites service in PRD"
  category                     = "fastly-spiderbites/prd"
  collector_id                 = sumologic_collector.SEO.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "SEO_fastly-spiderbites_stg" {
  name                         = "fastly-spiderbites/stg"
  description                  = "sumo log for fastly spiderbites dev and stg"
  category                     = "fastly-spiderbites/stg"
  collector_id                 = sumologic_collector.SEO.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Sugar_sugar-dev" {
  name                         = "sugar-dev"
  description                  = "Sugar CRM dev logs"
  category                     = "sugar-dev"
  collector_id                 = sumologic_collector.Sugar.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Sugar_sugar-prd" {
  name                         = "sugar-prd"
  description                  = "Sugar CRM production logs"
  category                     = "sugar-prd"
  collector_id                 = sumologic_collector.Sugar.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Sugar_sugar-stg" {
  name                         = "sugar-stg"
  description                  = "Sugar CRM staging logs"
  category                     = "sugar-stg"
  collector_id                 = sumologic_collector.Sugar.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "TCEN__Time_Central__tcen-prd" {
  name                         = "tcen-prd"
  category                     = "tcen-prd"
  collector_id                 = sumologic_collector.TCEN__Time_Central_.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "TCEN__Time_Central__tcen-stg" {
  name                         = "tcen-stg"
  description                  = "tcen staging logs"
  category                     = "tcen-stg"
  collector_id                 = sumologic_collector.TCEN__Time_Central_.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "tipjar_tipjar-x-prd" {
  name                         = "tipjar-x-prd"
  description                  = "Tips production collector logs"
  category                     = "tipjar-x-prd"
  collector_id                 = sumologic_collector.tipjar.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "tipjar_tipjar-x-stg" {
  name                         = "tipjar-x-stg"
  description                  = "Tips staging collection logs"
  category                     = "tipjar-x-stg"
  collector_id                 = sumologic_collector.tipjar.id
  content_type                 = "GoogleCloudLogs"
  multiline_processing_enabled = false
  timezone                     = "America/New_York"
  use_autoline_matching        = false
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Twistlock_twistlock-console-dev" {
  name                         = "twistlock-console-dev"
  category                     = "dev/twistlock/console"
  collector_id                 = sumologic_collector.Twistlock.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Twistlock_twistlock-console-prd" {
  name                         = "twistlock-console-prd"
  category                     = "prd/twistlock/console"
  collector_id                 = sumologic_collector.Twistlock.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "Twistlock_twistlock-console-stg" {
  name                         = "twistlock-console-stg"
  category                     = "stg/twistlock/console"
  collector_id                 = sumologic_collector.Twistlock.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadsvarnish_Collector_uploadsvarnish" {
  name                         = "uploadsvarnish"
  category                     = "uploads/varnish"
  collector_id                 = sumologic_collector.uploadsvarnish_Collector.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_10_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_10.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574440476_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574440476.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574494106_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574494106.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574542224_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574542224.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574609179_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574609179.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574666371_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574666371.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574723032_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574723032.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474574772742_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474574772742.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474575151510_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474575151510.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474575250208_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474575250208.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474575291370_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474575291370.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474575336152_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474575336152.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474575915226_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474575915226.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474575964903_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474575964903.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576022931_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576022931.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576066474_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576066474.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576155165_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576155165.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576213333_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576213333.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576292141_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576292141.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576441004_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576441004.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576495067_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576495067.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576690118_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576690118.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474576956179_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474576956179.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474577036574_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474577036574.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599227601_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599227601.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599275107_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599275107.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599322501_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599322501.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599368688_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599368688.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599413166_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599413166.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599458672_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599458672.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599520306_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599520306.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599556574_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599556574.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599592039_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599592039.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599646547_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599646547.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599692649_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599692649.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474599735870_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474599735870.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600081504_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600081504.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600126643_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600126643.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600177949_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600177949.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600222117_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600222117.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600276448_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600276448.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600318268_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600318268.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600359657_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600359657.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600408703_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600408703.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600448890_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600448890.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600489746_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600489746.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600532871_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600532871.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600592478_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600592478.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600640434_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600640434.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600683900_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600683900.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600730706_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600730706.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600774809_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600774809.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600837189_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600837189.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600891810_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600891810.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600949815_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600949815.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474600997574_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474600997574.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601055033_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601055033.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601099802_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601099802.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601414221_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601414221.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601508322_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601508322.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601618549_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601618549.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601656568_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601656568.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601730438_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601730438.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601776854_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601776854.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601818856_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601818856.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601852961_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601852961.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601906429_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601906429.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474601966120_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474601966120.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602007486_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602007486.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602044835_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602044835.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602099164_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602099164.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602143328_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602143328.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602189379_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602189379.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602267358_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602267358.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602341573_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602341573.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602387237_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602387237.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602448892_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602448892.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602490971_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602490971.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602523666_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602523666.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602572184_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602572184.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602623742_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602623742.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474602959633_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474602959633.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603041615_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603041615.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603073851_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603073851.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603127356_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603127356.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603179487_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603179487.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603280463_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603280463.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603316167_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603316167.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603366072_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603366072.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603410928_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603410928.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603464144_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603464144.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603521674_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603521674.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603567236_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603567236.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603611074_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603611074.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603652316_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603652316.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603738282_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603738282.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603796784_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603796784.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603856621_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603856621.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603900268_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603900268.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603932579_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603932579.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474603991605_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474603991605.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474604024093_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474604024093.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474604105010_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474604105010.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474604148145_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474604148145.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474604193111_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474604193111.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474631707676_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474631707676.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474631738590_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474631738590.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474631772161_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474631772161.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474631807995_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474631807995.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474631960544_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474631960544.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632316725_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632316725.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632356052_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632356052.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632391608_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632391608.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632493330_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632493330.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632523362_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632523362.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632567138_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632567138.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632609443_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632609443.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632666666_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632666666.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632706236_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632706236.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632747187_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632747187.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632778177_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632778177.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632837195_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632837195.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632897576_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632897576.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632937510_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632937510.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474632984639_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474632984639.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633030532_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633030532.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633060948_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633060948.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633118769_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633118769.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633150403_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633150403.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633258682_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633258682.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633287288_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633287288.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633353030_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633353030.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633418225_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633418225.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633458687_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633458687.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633515239_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633515239.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633562161_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633562161.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633636565_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633636565.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633665072_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633665072.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633700122_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633700122.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633761572_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633761572.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633826481_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633826481.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633883294_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633883294.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633913440_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633913440.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633959421_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633959421.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474633989686_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474633989686.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634050682_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634050682.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634097268_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634097268.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634137985_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634137985.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634179530_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634179530.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634210210_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634210210.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634290549_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634290549.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634325046_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634325046.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634397436_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634397436.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634427159_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634427159.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634470405_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634470405.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634511645_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634511645.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634554190_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634554190.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634589642_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634589642.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634642502_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634642502.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634702284_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634702284.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634752452_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634752452.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634805400_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634805400.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634840480_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634840480.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634883967_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634883967.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474634922463_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474634922463.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474635049222_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474635049222.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474635089967_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474635089967.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474635128621_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474635128621.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474635161038_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474635161038.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474635220571_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474635220571.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_1474635263349_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_1474635263349.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_2_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_2.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_3_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_3.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_4_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_4.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_5_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_5.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_6_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_6.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_7_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_7.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_8_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_8.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "uploadswebandmobile-www-old_Collector_9_uploadswebandmobile-www-old" {
  name                         = "uploadswebandmobile-www-old"
  category                     = "uploads/webandmobile-www-old"
  collector_id                 = sumologic_collector.uploadswebandmobile-www-old_Collector_9.id
  content_type                 = "Varnish"
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

