resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "main" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  os_type             = "Linux"
  sku_name            = "S1"  # Standard tier (consider "B1" for basic/budget)
}

resource "azurerm_linux_web_app" "main" {
  name                = var.web_app_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  #  Critical app settings for Flask
  app_settings = {
    WEBSITES_PORT      = "8080"               # Must match Dockerfile
    FLASK_APP          = "app.py"             # Entry point
    FLASK_ENV          = "production"         # Don't use development in production!
  }

  site_config {
    #  Required for reliable container operation
    always_on = true                          # Prevent Azure from sleeping your app
    health_check_path = "/"                   # Endpoint for health checks

    application_stack {
      docker_image_name        = "xamuel09/url-shortener:latest" # Explicit tag recommended
      docker_registry_url      = "https://index.docker.io"
    }
  }

  #  Enable container logs
  logs {
    http_logs {
      file_system {
        retention_in_days = 7
        retention_in_mb   = 100
      }
    }
  }
}