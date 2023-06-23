terraform {
  cloud {
    organization = "kenmoses1"

    workspaces {
      name = "example-workspace"
    }
  }
}