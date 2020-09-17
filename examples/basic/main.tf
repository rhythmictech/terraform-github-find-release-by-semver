module "example" {
  source  = "rhythmictech/find-release-by-semver/github"
  version = "~> 1.0.0-rc1"

  repo_name          = "terraform-aws-rds-postgres"
  repo_owner         = "rhythmictech"
  version_constraint = "~2.0.1"
}
