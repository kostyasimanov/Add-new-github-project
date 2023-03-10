# Configure the GitLab Provider

provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.base_url
}

provider "github" {
  token = var.github_token
}