resource "sumologic_role" "CMS" {
  name             = "CMS"
  description      = "CMS Team"
  filter_predicate = "_sourceCategory=publishing* OR _sourceCategory=mrln-elb OR _sourceCategory=infrastructure-mysql-slow OR _sourceCategory=merlin-proxy OR _sourceCategory=merlin-proxy-elb OR _sourceCategory=prd/co-fastly OR _sourceCategory=network-vpn-f5 OR _sourceCategory=cms-fallback-* OR _source=cms-fallback-*"
  capabilities     = ["viewCollectors", "manageMonitors", "viewPartitions"]
}

