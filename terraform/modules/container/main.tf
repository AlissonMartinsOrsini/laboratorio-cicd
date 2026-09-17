terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

variable "nome_container" {
  type = string
}

resource "docker_container" "app" {
  name  = var.nome_container
  image = "python:3.12-slim"
  memory       = var.memoria * 1024 * 1024
  memory_swap  = var.memoria * 1024 * 1024
}

variable "memoria" {
  type = number
}

output "container_id" {
  value = docker_container.app.id
}