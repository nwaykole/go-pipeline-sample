resource "google_compute_instance" "default" {
  name         = "virtual-machine-from-terraform"
  machine_type = "f1-micro"
  zone         = "us-central1-f"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "defaultvpc"
    subnetwork = "defaultvpc"

    access_config {
      // This block is required to assign an external IP to the instance
    }
  }

  // Uncomment to allow external access to the instance

}
