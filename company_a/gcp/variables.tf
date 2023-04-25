variable "project_id" {
  description = "The GCP project ID."
  default     = "dataloop-candidate-environment"
}

variable "region" {
  description = "The GCP region to deploy resources in."
  default     = "us-central1"  # Set a default region, or leave it empty to require user input
}

variable "zone" {
  description = "The GCP zone to deploy resources in."
  default     = "us-central1-a"  # Set a default zone, or leave it empty to require user input
}

variable "credentials_file" {
  description = "The path to the GCP service account JSON key file."
  default     = "gcp_gke_cluster.json"
}
