variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "Central US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the App Service plan"
  type        = string
}

variable "web_app_name" {
  description = "Name of the Web App"
  type        = string
}

variable "docker_image" {
  description = "Docker image to deploy"
  type        = string
}

variable "docker_registry_url" {
  description = "URL of Docker registry"
  type        = string
  default     = "https://index.docker.io"
}
