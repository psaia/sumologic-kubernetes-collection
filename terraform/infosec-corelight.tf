resource "sumologic_s3_source" "infosec-corelight" {
  name                         = "corelight Logs"
  description                  = "Log files from corelight appliances"
  category                     = "aws/s3"
  content_type                 = "AwsS3Bucket"
  scan_interval                = 300000
  paused                       = false
  collector_id                 = module.nytimes-infosec-corelight.sumologic_collector_id
  multiline_processing_enabled = false

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::147536899606:role/corelight-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-corelight-396d6b7c"
    path_expression = "*"
  }

  default_date_formats {
    format  = "epoch"
    locator = <<EOT
        ^([^.]+)\.
        EOT
  }

  filters {
    name        = "Remove Comments"
    filter_type = "Exclude"
    regexp      = "^#.*"
  }
}

# Field parsing for each log type
resource "sumologic_field_extraction_rule" "corelight-ssl" {
  name             = "Corelight ssl logs"
  scope            = "_sourcename=*/ssl_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-weird" {
  name             = "Corelight weird logs"
  scope            = "_sourcename=*/weird_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-snmp" {
  name             = "Corelight snmp logs"
  scope            = "_sourcename=*/snmp_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-radius" {
  name             = "Corelight radius logs"
  scope            = "_sourcename=*/radius_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-conn_long" {
  name             = "Corelight conn_long logs"
  scope            = "_sourcename=*/conn_long_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-smtp_links" {
  name             = "Corelight smtp_links logs"
  scope            = "_sourcename=*/smtp_links_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-kerberos" {
  name             = "Corelight kerberos logs"
  scope            = "_sourcename=*/kerberos_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-syslog" {
  name             = "Corelight syslog logs"
  scope            = "_sourcename=*/syslog_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-ssh" {
  name             = "Corelight ssh logs"
  scope            = "_sourcename=*/ssh_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-conn" {
  name             = "Corelight conn logs"
  scope            = "_sourcename=*/conn_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-notice" {
  name             = "Corelight notice logs"
  scope            = "_sourcename=*/notice_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-smtp" {
  name             = "Corelight smtp logs"
  scope            = "_sourcename=*/smtp_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-rdp" {
  name             = "Corelight rdp logs"
  scope            = "_sourcename=*/rdp_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-ftp" {
  name             = "Corelight ftp logs"
  scope            = "_sourcename=*/ftp_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-ntp" {
  name             = "Corelight ntp logs"
  scope            = "_sourcename=*/ntp_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}


resource "sumologic_field_extraction_rule" "corelight-dpd" {
  name             = "Corelight dpd logs"
  scope            = "_sourcename=*/dpd_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-tunnel" {
  name             = "Corelight tunnel logs"
  scope            = "_sourcename=*/tunnel_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-dns" {
  name             = "Corelight dns logs"
  scope            = "_sourcename=*/dns_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-sip" {
  name             = "Corelight sip logs"
  scope            = "_sourcename=*/sip_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-http" {
  name             = "Corelight http logs"
  scope            = "_sourcename=*/http_20*"
  parse_expression = <<EOT
        parse "*\t*\t*\t*\t*\t*\t*" as ts,uid,src_ip,src_port,dest_ip,dest_port,detail
        EOT
  enabled          = true
}