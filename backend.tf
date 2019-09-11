terraform {
  backend "gcs" {
    bucket  = "tfstate-bucket"
    prefix  = "bigquery"
  }

  required_version = ">= 0.12"
}
