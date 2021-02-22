### DNS ###

# Bind
resource "sumologic_field_extraction_rule" "infosec-dns-bind" {
  name             = "Infosec DNS Bind"
  scope            = "_sourcecategory=dns-daemon"
  parse_expression = <<EOT
        parse regex "named\[\d+\]:\s+client\s+(?:@\S+\s+)?(?<src_ip>[0-9.]+)#(?<src_port>\d+)(?:\/key\s+\S+)?\s+\(\S+\):\s+view\s+\S+:\s+query:\s+(?<query>\S+)\s+IN\s+(?<query_type>[A-Z]+)" nodrop
        | "dns" as event_type
        EOT
  enabled          = true
}

# GCP Query Logs
resource "sumologic_field_extraction_rule" "infosec-dns-gcp" {
  name             = "Infosec DNS GCP"
  scope            = "_sourcecategory=gcp-dns"
  parse_expression = <<EOT
        parse "queryName\":\"*\"" as query nodrop
        | parse "queryType\":\"*\"" as query_type nodrop
        | parse "sourceIP\":\"*\"" as src_ip nodrop
        | parse "vmInstanceName\":\"*\"" as src_host nodrop
        | "dns" as event_type
        EOT
  enabled          = true
}

# Umbrella Logs
resource "sumologic_field_extraction_rule" "infosec-dns-umbrella" {
  name             = "Infosec DNS Umbrella"
  scope            = "_sourcecategory=umbrella or _sourcename=dnslogs*"
  parse_expression = <<EOT
        csv _raw extract 2 as policy,4 as src_ip,6 as action,7 as query_type,9 as query,10 as dest_category
        | "dns" as event_type
        EOT
  enabled          = true
}

# Corelight DNS
resource "sumologic_field_extraction_rule" "infosec-dns-corelight" {
  name             = "Infosec DNS Corelight"
  scope            = "_sourcecategory=corelight _sourceName=*/dns_*"
  parse_expression = <<EOT
        parse "query\":\"*\"" as query nodrop
        EOT
  enabled          = true
}

### Firewall ###
resource "sumologic_field_extraction_rule" "infosec-firewall-fortigate" {
  name             = "Infosec Firewall Fortigate"
  scope            = "_sourceCategory=network-firewall or _sourceCategory=forti-analyzer"
  parse_expression = <<EOT
        parse "srcip=* " as src_ip nodrop
        | parse "srcport=* " as src_port nodrop
        | parse "dstip=* " as dest_ip nodrop
        | parse "dstport=* " as dest_port nodrop
        | parse "action=\"*\"" as action nodrop
        | parse "sentbyte=* rcvdbyte=* " as bytes_sent,bytes_recv nodrop
        | "firewall" as event_type
        EOT
  enabled          = true
}

### HTTP ###

# Fortigate HTTP logs
resource "sumologic_field_extraction_rule" "infosec-http-fortigate" {
  name             = "Infosec HTTP Fortigate"
  scope            = "_sourceCategory=network-firewall webfilter"
  parse_expression = <<EOT
        parse "hostname=\"*\"" as dest_host nodrop
        | parse "url=\"*\"" as url nodrop
        | parse "catdesc=\"*\"" as dest_category nodrop
        | "http" as event_type
        EOT
  enabled          = true
}

# Corelight HTTP Logs
resource "sumologic_field_extraction_rule" "infosec-http-corelight" {
  name             = "Infosec HTTP Corelight"
  scope            = "_sourceCategory=corelight _sourceName=*/http_*"
  parse_expression = <<EOT
        parse "method\":\"*\"" as http_method nodrop
        | parse "host\":\"*\"" as dest_host nodrop
        | parse "user_agent\":\"*\"" as http_user_agent nodrop
        | parse "request_body_len\":*," as bytes_sent nodrop
        | parse "response_body_len\":*," as bytes_recv nodrop
        EOT
  enabled          = true
}

# Squid PCI Proxy Logs
resource "sumologic_field_extraction_rule" "infosec-http-squid" {
  name             = "Infosec HTTP Squid"
  scope            = "_source=nytimes-dv-pci-proxy-prd"
  parse_expression = <<EOT
        parse regex "TCP_(?<action>[A-Z]+)/\d+\s+\d+\s+(?<http_method>\S+)\s+(?<dest_host>[^:]+):(?<dest_port>\d+)\s+\S+\s+HIER_[A-Z]+/(?<dest_ip>[\d.-]+)" nodrop
        | "http" as event_type
        EOT
  enabled          = true
}

### Authentication Logs ###

# Windows
resource "sumologic_field_extraction_rule" "infosec-auth-windows" {
  name             = "Infosec Auth Windows"
  scope            = <<EOT
        (_sourceCategory=nytimes-windows-dc-prd OR _sourceCategory=Workstation-Logs OR _sourceCategory=Server-Logs) AND _sourcename = "Security" AND ("EventCode = 4624;" OR "EventCode = 4625;" OR "EventCode = 4768;" OR "EventCode = 4771;")
        EOT
  parse_expression = <<EOT
        parse regex "(?:Account Information|New Logon):[\s\r\n]+(?:Account Name|Security ID):\s+(?<src_user>[^\r\n]+)" nodrop
        | parse regex "Network Information:[\s\r\n]+Workstation Name:\s+(?<src_host>[^\r\n]+)[\s\r\n]+" nodrop
        | parse regex "Network Information:[\s\r\n]+Client Address:\s+[:f]*(?<src_ip>[0-9.]+)[\s\r\n]+" nodrop
        | parse regex "Source Network Address:\s+[:f]*(?<src_ip>[0-9.]+)" nodrop
        | "auth" as event_type
        EOT
  enabled          = true
}

# Google Workspace
resource "sumologic_field_extraction_rule" "infosec-auth-google" {
  name             = "Infosec Auth Google"
  scope            = <<EOT
        _sourceCategory = google_apps_gsuite_audit (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
        EOT
  parse_expression = <<EOT
        parse "\"ipAddress\": \"*\"," as src_ip nodrop
        | parse regex "\"actor\":\s+\{[\r\n\s]+\"email\":\s+\"(?<src_user>[^\"]+)\"" nodrop
        | "auth" as event_type
        EOT
  enabled          = true
}

# Azure AD
resource "sumologic_field_extraction_rule" "infosec-auth-azure" {
  name             = "Infosec Auth Azure"
  scope            = "_sourceCategory=AzureADLogs"
  parse_expression = <<EOT
        parse "callerIpAddress\":\"*\"," as src_ip nodrop
        | parse "userPrincipalName\":\"*\"," as src_user nodrop
        | "auth" as event_type
        EOT
  enabled          = true
}

# AWS
resource "sumologic_field_extraction_rule" "infosec-auth-aws" {
  name             = "Infosec Auth AWS"
  scope            = "_sourceCategory=AWS_EAGLE"
  parse_expression = <<EOT
        parse "userName\":\"*\"" as src_user nodrop
        | parse "sourceIPAddress\":\"*\"" as src_ip nodrop
        | "auth" as event_type
        EOT
  enabled          = true
}

### Sessions ###

# F5 VPN
resource "sumologic_field_extraction_rule" "infosec-session-f5-vpn" {
  name             = "Infosec Session F5 VPN"
  scope            = "_sourceCategory=network-vpn-f5 (nyhq-f5lb-vpn01-self.nyhq.nytint.com OR vpn-lb01-self.prd.orf1.nyt.net)"
  parse_expression = <<EOT
        parse regex "/Common/(?<policy>[^:]+):Common:(?<session_id>[a-f0-9]{6,10}):" nodrop
        | parse "Username '*'" as src_user nodrop
        | parse "Hostname: * Type" as src_host nodrop
        | parse "New session from client IP * " as src_ip nodrop
        | parse "Assigned PPP Dynamic IPv4: * " as dest_ip nodrop
        EOT
  enabled          = true
}