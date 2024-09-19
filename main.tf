resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-githubdemo-bucket-001"
  project                  = "ci-cd-proyecto"
  location                 = "SOUTHAMERICA-EAST1"
  force_destroy            = true
  public_access_prevention = "enforced"
}
#
resource "google_storage_bucket" "my-bucket2" {
  name                     = "tt-githubdemo-bucket-002"
  project                  = "ci-cd-proyecto"
  location                 = "SOUTHAMERICA-EAST1"
  force_destroy            = true
  public_access_prevention = "enforced"
}
#
### dummy
