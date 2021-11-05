resource "google_compute_firewall" "dev_firewall" {
  name    = "dev-firewall"
  network = "${google_compute_network.vpc_networkdev.name}"
  project = var.my_dev_project1


  allow {
    protocol = "icmp"
  }


  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000","22"]
  }


  source_tags = ["web"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "prod_firewall" {
  name    = "prod-firewall"
  network = "${google_compute_network.vpc_networkprod.name}"
  project = var.my_prod_project2


  allow {
    protocol = "icmp"
  }


  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000","22"]
  }


  source_tags = ["web"]
  source_ranges = ["0.0.0.0/0"]
}