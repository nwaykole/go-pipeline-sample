# Specify the provider (GCP, AWS, Azure)
provider "google" {
#credentials = "${file("credentials.json")}"
project = "prj-gft-nnb-01"
region = "us-central1"
}
