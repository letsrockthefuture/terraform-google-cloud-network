output "project" {
  description = "The project where the cloud endpoint was created."
  value       = local.project
}

output "vpc_network_name" {
  description = "Name of the VPC network."
  value       = google_compute_network.vpc_network.name
}

output "subnet_name" {
  description = "Name of the subnet."
  value       = google_compute_subnetwork.subnet.name
}
