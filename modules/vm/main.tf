resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  tags = [ "web" ]

   metadata = {
     ssh-keys = "${var.user}:${file(var.publickey)}"
   }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = var.subnet_name
    access_config {
      # Include this to give the VM a public IP address
    }
  }
}
