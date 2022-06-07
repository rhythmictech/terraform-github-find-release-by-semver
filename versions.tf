terraform {
  required_version = ">= 0.13.4"

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = ">= 4.0"
    }

    http = {
      source  = "hashicorp/http"
      version = ">= 2.0"
    }
  }
}
