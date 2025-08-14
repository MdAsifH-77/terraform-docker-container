terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull Docker image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create Docker container
resource "docker_container" "nginx_container" {
  name  = "nginx-terraform"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8080
  }
}
