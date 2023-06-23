terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.2"
    }

    google = {
      source = "hashicorp/google"
      version = "4.69.0"
    }
    github = {
    source = "Integrations/github"
    version = "5.26.0"
    }

  }

}
provider "google" {
  credentials = file("/amazing-chalice-388206-9f8f38c3b9f6.json")
  project = "amazing-chalice-388206"

 
}

