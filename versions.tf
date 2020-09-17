terraform {
  required_version = ">= 0.12.28"

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "~> 3.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 1.2"
    }
  }
}
