variable "name" {
  type = string
}

variable "webhook" {
  type = string
}

variable "headers" {
  type = map(string)
  default = {}
}

variable "custom_headers" {
  type = map(string)
  default = {}
}

variable "default_payload" {
  type = string
  default = <<JSON
{
  "client" : "Sumo Logic",
  "eventType" : "{{SearchName}}",
  "description" : "{{SearchDescription}}",
  "search_url" : "{{SearchQueryUrl}}",
  "num_records" : "{{NumRawResults}}",
  "search_results" : "{{AggregateResultsJson}}"
}
JSON
}
