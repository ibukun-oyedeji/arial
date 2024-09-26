terraform {
  backend "gcs" {
    bucket = "state-bucket-arial"
    # Will store the default.state file in terraform/state/default.state directory
    prefix      = "terraform/arial/state"
    # credentials = "./keys.json"
  }
}