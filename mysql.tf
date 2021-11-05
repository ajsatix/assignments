resource "google_sql_database" "database" {

  name     = "my-database1"
  instance = google_sql_database_instance.instance.name
  project = "prd-priject-9219"
}


resource "google_sql_database_instance" "instance" {

  name   = "my-database-instance42"
  database_version = "MYSQL_5_6"
  region = "us-east1"
  project = "prd-priject-9219"
  settings {

    tier = "db-f1-micro"
    ip_configuration {

      ipv4_enabled = true
      authorized_networks {

        name = "public  network"
        value = "0.0.0.0/0"
      }
    }
  }
}
resource "google_sql_user" "users" {

  name     = "myuser"
  instance = google_sql_database_instance.instance.name
  project =  "prd-priject-9219"
  password = "redhat"
}