data "http" "available_versions" {
  url = "https://api.github.com/repos/${var.repo_owner}/${var.repo_name}/releases"

  request_headers = {
    accept = "vnd.github.v3+json"
  }
}

locals {
  data               = jsondecode(data.http.available_versions.body)
  available_versions = local.data.*.tag_name
  tag_version_map = {
    for tag in local.available_versions : trimprefix(tag, "v") => tag
  }
}

module "find_semver_match" {
  source  = "rhythmictech/find-semver-match/terraform"
  version = "1.0.0-rc3"

  available_versions = local.available_versions
  version_constraint = var.version_constraint
}

data "github_release" "this" {
  repository  = var.repo_name
  owner       = var.repo_owner
  retrieve_by = "tag"
  release_tag = local.tag_version_map[module.find_semver_match.target_version]
}
