terraform {
  required_version = ">= 0.12.14"

  required_providers {
    github = {
      version = "~> 3.0"
    }

    http = {
      version = "~> 1.2"
    }
  }
}
