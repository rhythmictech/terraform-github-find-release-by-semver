data "http" "available_versions" {
  url = "https://api.github.com/repos/${var.repo_owner}/${var.repo_name}/releases"

  request_headers = {
    accept = "vnd.github.v3+json"
  }
}

locals {
  available_versions = local.data.*.tag_name
  data               = jsondecode(data.http.available_versions.body)

  tag_version_map = {
    for tag in local.available_versions : trimprefix(tag, "v") => tag
  }
}

module "find_semver_match" {
  source  = "rhythmictech/find-semver-match/terraform"
  version = "~> 1.1.0"

  available_versions = local.available_versions
  version_constraint = var.version_constraint
}

data "github_release" "this" {
  owner       = var.repo_owner
  repository  = var.repo_name
  release_tag = local.tag_version_map[module.find_semver_match.target_version]
  retrieve_by = "tag"
}
