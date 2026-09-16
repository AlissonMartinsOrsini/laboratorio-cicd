
terraform {
  required_version = ">= 1.0"

  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {
}

resource "docker_image" "app" {
  name = "python:3.12-slim"
}

resource "docker_container" "app" {
  name  = "laboratorio-cicd"
  image = docker_image.app.image_id
}