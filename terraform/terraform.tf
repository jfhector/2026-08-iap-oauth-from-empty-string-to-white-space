terraform {
  required_version = ">= 1.4.6"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.39.0" # The same version as serenity-shared-infrastructure/us/live as of 2026-08-18
    }
  }
}
