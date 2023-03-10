terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 15.7.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}