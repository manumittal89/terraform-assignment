provider "google" {
  project      = var.project_id
  region       = var.region
  zone         = var.zone
  credentials  = file(var.credentials_file)
}

resource "google_container_cluster" "gke_cluster" {
  name               = "gke-cluster-manu"
  location           = var.zone
  initial_node_count = 1

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
    ]
  }
}
resource "kubernetes_namespace" "services" {
  provider = kubernetes.gke_cluster

  metadata {
    name = "services"
  }
}

resource "kubernetes_namespace" "monitoring" {
  provider = kubernetes.gke_cluster

  metadata {
    name = "monitoring"
  }
}
