# Specify the provider (GCP, AWS, Azure)
provider "google" {
#credentials = "${file("credentials.json")}"
project = "prj-gft-nnb-01"
region = "us-central1"
zone = "us-central1-f"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}
