//Creating Container Cluster
resource "google_container_cluster" "testgke_cluster" {
  name                     = var.gke
  description              = var.gke
  project                  = var.project
  location                 = var.region
  network                  = google_compute_network.testvpc.name
  remove_default_node_pool = true
  initial_node_count       = 1
}

//Creating Node Pool For Container Cluster
resource "google_container_node_pool" "testgke_nodepool" {
  name       = var.gkenodepool
  project    = var.project
  location   = var.region
  cluster    = google_container_cluster.testgke_cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-micro"
  }

  depends_on = [
    google_container_cluster.testgke_cluster
  ]
}
