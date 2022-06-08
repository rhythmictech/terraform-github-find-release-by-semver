# terraform-github-find-release-by-semver 
Finds the desired release from a GitHub repository based on a semver constraint.

[![tflint](https://github.com/rhythmictech/terraform-github-find-release-by-semver/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-github-find-release-by-semver/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-github-find-release-by-semver/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-github-find-release-by-semver/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-github-find-release-by-semver/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

## Example
Here's what using the module will look like
```hcl
module "example" {
  source  = "rhythmictech/find-release-by-semver/github"

  repo_name          = "terraform-aws-rds-postgres"
  repo_owner         = "rhythmictech"
  version_constraint = "~2.0.1"
}
```

## Dependencies
`python3` must be in your `$PATH` and resolve to Python `>=3.8.0`

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.4 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.26.0 |
| <a name="provider_http"></a> [http](#provider\_http) | 2.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_find_semver_match"></a> [find\_semver\_match](#module\_find\_semver\_match) | rhythmictech/find-semver-match/terraform | ~> 1.1.0 |

## Resources

| Name | Type |
|------|------|
| [github_release.this](https://registry.terraform.io/providers/hashicorp/github/latest/docs/data-sources/release) | data source |
| [http_http.available_versions](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of the repo (without owner) | `string` | n/a | yes |
| <a name="input_repo_owner"></a> [repo\_owner](#input\_repo\_owner) | Name of the User or Org who owns the repo | `string` | n/a | yes |
| <a name="input_version_constraint"></a> [version\_constraint](#input\_version\_constraint) | The NPM-style version constraint you want to use to find the right version | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_version"></a> [target\_version](#output\_target\_version) | Version matched to constraint |
| <a name="output_version_info"></a> [version\_info](#output\_version\_info) | All available info about the target release |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
