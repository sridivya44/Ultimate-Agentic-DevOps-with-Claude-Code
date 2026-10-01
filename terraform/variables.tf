variable "region" {
  description = "AWS region for the S3 bucket and provider"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name, used for resource naming and tagging"
  type        = string
  default     = "portfolio-site"
}

variable "environment" {
  description = "Deployment environment (e.g. production, staging)"
  type        = string
  default     = "production"
}

variable "domain_name" {
  description = "Optional custom domain for the site. Leave empty to use the default CloudFront domain."
  type        = string
  default     = ""
}
