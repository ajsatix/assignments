resource "google_compute_network" "vpc_networkdev" {

  name = "vpc-network-2"
  project = var.my_dev_project1
  routing_mode = "GLOBAL"
  auto_create_subnetworks = false

}
resource "google_compute_subnetwork" "subnetwork_dev" {

  name          = "mysubnet-2"
  ip_cidr_range = "10.10.12.0/24"
  region        = "us-west1"
  network       = "${google_compute_network.vpc_networkdev.name}"
  project    = var.my_dev_project1
}

resource "google_compute_network" "vpc_networkprod" {

  name = "vpc-network-1"
  project = var.my_prod_project2
  routing_mode = "GLOBAL"
 auto_create_subnetworks = false
  

}

resource "google_compute_subnetwork" "subnetwork_prod" {

  name          = "mysubnet-2"
  ip_cidr_range = "10.10.11.0/24"
  region        = "us-west1"
  network       = "${google_compute_network.vpc_networkprod.name}"
  project      = var.my_prod_project2
}