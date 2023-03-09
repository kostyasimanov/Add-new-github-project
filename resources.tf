# Add a project owned by the user

resource "gitlab_project" "add_gitlab_project" {
  name                   = "Add new gitlab project"
  description            = "Project to add new project at gitlab"
  default_branch         = "main"
  initialize_with_readme = true
  path                   = "add-gitlab-project"
}

resource "gitlab_deploy_key" "personal_gitlab_key" {
  project  = gitlab_project.add_gitlab_project.id
  title    = "Personal Deploy Key"
  can_push = true
  key      = var.deploy_key
}