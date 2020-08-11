resource "sumologic_role" "Dist" {
  name             = "Dist"
  description      = "Distribution PDP logs"
  filter_predicate = "_sourceCategory=dist OR _source=dist-dev OR _source=dist-stg OR _source=dist-prd OR _sourceCategory=ppd-ink OR _source=ppd-ink-dev OR _source=ppd-ink-stg OR _source=ppd-ink-prd OR _sourceCategory=ppd-ink-ce OR _source=ppd-ink-ce-dev OR _source=ppd-ink-ce-stg OR _source=ppd-ink-ce-prd OR _sourceCategory=dist-batch OR _source=dist-batch-dev OR _source=dist-batch-stg OR _source=dist-batch-prd"
  capabilities     = ["viewPartitions"]
}

