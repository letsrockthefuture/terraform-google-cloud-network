variable "project" {
  type        = string
  description = "Project ID from Google Cloud."
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `dev`, `staging`, `prd`)."
  default     = "dev"
}

variable "name" {
  type        = string
  description = "Application or solution name (e.g. `app`)."
  default     = "hash-challenge"
}

variable "region" {
  type        = string
  description = "Locate based on Google Cloud region to provisiong our resources (e.g. `us-east1`)."
  default     = "us-east1"
}
