module "dv-test" {
  source = "../modules/collector"

  name = "dv-test"
}

module "nytimes-spg-petstore" {
  source = "../modules/collector"

  name = "nytimes/spg-petstore"
}

module "nytimes-search-omnibus" {
  source = "../modules/collector"

  name = "nytimes/search-omnibus"
}
