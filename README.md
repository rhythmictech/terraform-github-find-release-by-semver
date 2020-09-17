# terraform-github-find-release-by-semver 
Finds the desired release from a GitHub repository based on a semver constraint.

[![tflint](https://github.com/rhythmictech/terraform-github-find-release-by-semver /workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver /actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-github-find-release-by-semver /workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver /actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-github-find-release-by-semver /workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver /actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-github-find-release-by-semver /workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver /actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-github-find-release-by-semver /workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-github-find-release-by-semver /actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

## Example
Here's what using the module will look like
```hcl
module "example" {
  source = "rhythmictech/terraform-mycloud-mymodule
}
```

## About
A bit about this module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.14 |
| github | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| github | ~> 3.0 |
| http | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| repo\_name | Name of the repo (without owner) | `string` | n/a | yes |
| repo\_owner | Name of the User or Org who owns the repo | `string` | n/a | yes |
| version\_constraint | The NPM-style version constraint you want to use to find the right version | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| target\_version | Version matched to constraint |
| version\_info | All available info about the target release |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants Underneath this Module
- [pre-commit.com](pre-commit.com)
- [terraform.io](terraform.io)
- [github.com/tfutils/tfenv](github.com/tfutils/tfenv)
- [github.com/segmentio/terraform-docs](github.com/segmentio/terraform-docs)
