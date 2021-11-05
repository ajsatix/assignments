resource "kubernetes_service" "example" {

  depends_on = [null_resource.nullremote1]
  metadata {
    name = "loadbalancer"
  }
  spec {
    selector = {

      app = "${kubernetes_pod.example.metadata.0.labels.app}"
    }
    session_affinity = "ClientIP"
    port {

      port        = 80
      target_port = 80
    }


    type = "LoadBalancer"
  }
}


resource "kubernetes_pod" "example" {

  metadata {

    name = "terraform-example"
    labels = {

      app = "MyApp"
    }
  }


  spec {
    container {

      image = "wordpress:4.8-apache"
      name  = "mywp"
    }
  }
}


output "wordpressstatus" {

          value = kubernetes_service.example.status
  


}