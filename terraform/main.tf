
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

module "container" {
  source = "./modules/container"
  nome_container = "${terraform.workspace}-laboratorio-cicd"
  memoria = terraform.workspace == "prod" ? 1024 : 512

}

output "container_id" {
  value = module.container.container_id
}