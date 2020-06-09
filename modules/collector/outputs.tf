output "http_endpoints" {
  value = {for src in sumologic_http_source.sources : src.name => src.url}
}

output "filter" {
  value = join(" OR ", concat([for src in sumologic_http_source.sources : "_source=${src.name}"], ["_sourceCategory=${var.name}"]))
}