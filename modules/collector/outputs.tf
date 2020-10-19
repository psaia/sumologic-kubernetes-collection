output "http_endpoints" {
  value = { for src in sumologic_http_source.sources : src.name => src.url }
}

output "search_filter" {
  value = join(" OR ", [for src in sumologic_http_source.sources : "_source=${src.name} OR _sourceCategory=${src.category}"])
}

output "source_category" {
  value = [ for src in sumologic_http_source.sources : src.category ]
}
