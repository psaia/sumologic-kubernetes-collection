resource "sumologic_role" "Dist" {
  name             = "Dist"
  description      = "Distribution PDP logs"
  filter_predicate = "_sourceCategory=dist OR\n_source=dist-dev OR\n_source=dist-stg OR\n_source=dist-prd OR\n_sourceCategory=ppd-ink OR\n_source=ppd-ink-dev OR\n_source=ppd-ink-stg OR\n_source=ppd-ink-prd OR\n_sourceCategory=ppd-ink-ce OR\n_source=ppd-ink-ce-dev OR\n_source=ppd-ink-ce-stg OR\n_source=ppd-ink-ce-prd OR\n_sourceCategory=dist-batch OR\n_source=dist-batch-dev OR\n_source=dist-batch-stg OR\n_source=dist-batch-prd"
  capabilities     = ["viewPartitions"]
}

