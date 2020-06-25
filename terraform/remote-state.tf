terraform {
  backend "gcs" {
    bucket = "remote-state"
    prefix = "nytimes/dv-sumologic"
  }
}
