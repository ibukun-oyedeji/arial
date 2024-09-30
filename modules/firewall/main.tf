resource "google_compute_firewall" "default" {
  name    = var.firewall_name
  network = var.vpc_name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "8080"]
  }
  target_tags = ["web"]
  source_ranges = [ "0.0.0.0/0" ]
}

