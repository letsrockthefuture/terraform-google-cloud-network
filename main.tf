locals {
  project = var.project
  name    = var.name
  region  = var.region
}

resource "google_compute_network" "vpc_network" {
  project                 = local.project
  name                    = "${local.name}-vpc"
  description             = "Feature to provision a Google Cloud VPC network."
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  project       = local.project
  name          = "${local.name}-subnet"
  description   = "Feature to provision a Google Cloud subnet."
  region        = local.region
  network       = google_compute_network.vpc_network.name
  ip_cidr_range = "10.10.0.0/24"
}
