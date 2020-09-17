
variable "repo_name" {
  type        = string
  description = "Name of the repo (without owner)"
}

variable "repo_owner" {
  type        = string
  description = "Name of the User or Org who owns the repo"
}

variable "version_constraint" {
  type        = string
  description = "The NPM-style version constraint you want to use to find the right version"
}
