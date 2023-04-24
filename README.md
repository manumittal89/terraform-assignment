# terraform-assignment
New Repo for Terraform-assignment 

This structure has top-level directories for each company (company_a, company_b). Within each company's directory, there are subdirectories for each cloud provider (aws, gcp). Inside each cloud provider's directory, we have folders for each environment (production, staging). Each environment folder contains a main.tf file with the Terraform configurations specific to that environment.

we have also include a variables.tf file in each cloud provider's directory to define any provider-specific variables, such as credentials, region, or project ID. The variables can be shared across all environments within that cloud provider.
