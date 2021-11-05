resource "google_project" "my_dev_project1" {
  name       = "Developer project"
  project_id = "sathish-dev-proj"
  }

resource "google_project" "my_prod_project2" {
  name       = "Production project"
  project_id = "sathish-prod-proj"
  
}