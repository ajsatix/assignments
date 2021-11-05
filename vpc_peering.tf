resource "google_compute_network_peering" "peering1" {

  name         = "peering1"
  network      = "${google_compute_network.vpc_networkprod.id}"
  peer_network = "${google_compute_network.vpc_networkdev.id}"

}
resource "google_compute_network_peering" "peering2" {

  name         = "peering1"
  network      = "${google_compute_network.vpc_networkdev.id}"
  peer_network = "${google_compute_network.vpc_networkprod.id}"
}