# Add a project owned by the user

# GitLab repos

resource "gitlab_project" "add_gitlab_project" {
  name                   = "Add new gitlab project"
  description            = "Project to add new project at gitlab"
  default_branch         = "main"
  initialize_with_readme = true
  path                   = "add-gitlab-project"
}


resource "gitlab_project" "do-vps-aws-dns" {
  name                   = "DO VPS and AWS DNS"
  description            = "Add DigitalOcean VPS + AWS Route53 DNS"
  default_branch         = "main"
  initialize_with_readme = true
  path                   = "do-vps-aws-dns"
}

resource "gitlab_project" "alphacamp_blog_app" {
  name                   = "Alphacamp Blog App"
  description            = "Demo project ruby on rails"
  default_branch         = "main"
  initialize_with_readme = true
  path                   = "alphacamp_blog_app"
}


# GitHub repos

resource "github_repository" "add_github_repo" {
  name        = "add-new-github-project"
  description = "Project to add new repo at github"
  auto_init   = true
}

resource "github_repository" "do-vps-aws-dns" {
  name        = "do-vps-aws-dns"
  description = "Add DigitalOcean VPS + AWS Route53 DNS"
  auto_init   = true
}


# Deploy Key

resource "gitlab_deploy_key" "personal_gitlab_key" {
  project  = gitlab_project.add_gitlab_project.id
  title    = "Personal Deploy Key"
  can_push = true
  key      = var.deploy_key
}
