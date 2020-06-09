output "http_endpoints" {
  value = {for src in sumologic_http_source.sources : src.name => src.url}
}
