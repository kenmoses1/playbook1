provider "github" {
    token = var.token
}

resource "github_repository" "example" {
    name = "kaseeip-repo"
    description = "my awesome codebase"
    visibility = "public"
}

resource "github_repository_collaborator" "a_repo collaborator" {
    repository = github_repository.example.name
    username = ""
    permission = "user"
}