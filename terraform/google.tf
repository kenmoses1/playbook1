resource "google_compute_instance" "default"{
  name         = "instance-server"
  machine_type = "g1-small"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
       //Ephemeral public IP
    }
  }
}