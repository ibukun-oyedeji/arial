resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  network       = var.vpc_name
  region        = var.region
  private_ip_google_access = "true"
}
