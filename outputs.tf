
output "target_version" {
  description = "Version matched to constraint"
  value       = module.find_semver_match.target_version
}

output "version_info" {
  description = "All available info about the target release"
  value       = data.github_release.this
}
