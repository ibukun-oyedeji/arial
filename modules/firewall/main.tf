resource "google_compute_firewall" "default" {
  name    = var.firewall_name
  network = var.vpc_name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
  source_tags = ["web"]
}

