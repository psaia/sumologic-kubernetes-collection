module "collectors" {
  source = "../collector"
  for_each = var.collectors

  name = "${var.name}-${each.value}"
}

module "role" {
  source = "../role"
  
  name = var.name
  filter = join(" OR ", module.collectors[*].filter)
}