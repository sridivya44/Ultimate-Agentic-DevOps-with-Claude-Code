# Remote state backend (S3)
#
# Bootstrapping steps:
#   1. Leave this block commented out and run `terraform init` — state is
#      stored locally on the first run.
#   2. Create the state bucket (and optionally a lock table) and run
#      `terraform apply` to create the resources.
#   3. Uncomment the block below, fill in the bucket name, and run
#      `terraform init -migrate-state` to move local state into S3.
#
# terraform {
#   backend "s3" {
#     bucket       = "portfolio-site-terraform-state-<account-id>"
#     key          = "portfolio-site/production/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true # S3-native state locking (Terraform >= 1.10)
#   }
# }
