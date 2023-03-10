variable "gitlab_token" {
  description = "Auth GitLab Token"
  type        = string
  sensitive   = true
}

variable "github_token" {
  description = "Auth GitHub Token"
  type        = string
  sensitive   = true
}

variable "base_url" {
  type    = string
  default = "https://gitlab.com/api/v4/"
}

variable "deploy_key" {
  description = "GitLab Deployment Key"
  type        = string
  sensitive   = true
}