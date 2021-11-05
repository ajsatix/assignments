resource "google_container_cluster" "primary" {
  name               = "marcellus-wallace"
  location           = "us-east1-a"
  initial_node_count = 3
  project = "sathish-dev-proj"


  master_auth {

    


    client_certificate_config {
      issue_client_certificate = false
    }
  }


  node_config {

    oauth_scopes = [

      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]


    metadata = {

      disable-legacy-endpoints = "true"
    }


    labels = {
      app = "wordpress"
    }


    tags = ["website", "wordpress"]
  }


  timeouts {
    create = "30m"
    update = "40m"
  }
}
resource "null_resource" "nullremote1" {

  depends_on = [google_container_cluster.primary]
  provisioner "local-exec" {

    command = "gcloud container clusters get-credentials ${google_container_cluster.primary.name} --zone ${google_container_cluster.primary.location} --project ${google_container_cluster.primary.project}"
    }
}