
#  URL Shortener App (Azure + Docker + Terraform)

A simple URL shortener web application built with Flask, containerized using Docker, and deployed to Azure App Service using Terraform for Infrastructure as Code (IaC).

## Project Overview

This project demonstrates:
- Application development using Python (Flask)
- Containerization with Docker
- Deployment using Azure App Service for Linux
- Infrastructure provisioning with Terraform
- Docker image hosted on Docker Hub

>  Goal: Build a real-world cloud-native app using DevOps best practices.

---

## 🧱 Tech Stack

| Layer             | Technology            |
|------------------|-----------------------|
| Language         | Python (Flask)        |
| Container        | Docker                |
| Cloud Platform   | Microsoft Azure       |
| IaC              | Terraform             |
| Container Registry | Docker Hub         |
| Web Hosting      | Azure App Service     |

---

##  Folder Structure

```bash
url-shortener/
│
├── app.py                 # Main Flask app
├── Dockerfile             # Docker build instructions
├── requirements.txt       # Python dependencies
│
├── terraform/             # Terraform IaC configs
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
````

---

##  Prerequisites

* [Docker](https://docs.docker.com/get-docker/)
* [Terraform](https://developer.hashicorp.com/terraform/install)
* Azure account
* Docker Hub account

---

##  Docker Image

You can pull the image manually:

```bash
docker pull xamuel09/url-shortener:latest
```

Or run it locally:

```bash
docker run -p 8080:8080 xamuel09/url-shortener
```

Then open [http://localhost:8080](http://localhost:8080)

---

##  Deploying with Terraform (Azure)

### 1. Initialize Terraform

```bash
cd terraform
terraform init
```

### 2. Review the execution plan

```bash
terraform plan
```

### 3. Apply the configuration

```bash
terraform apply
```

> Outputs will include a link like:
> `https://urlshortenerapp12345.azurewebsites.net`

---

##  Variables Used

Defined in `terraform.tfvars`:

```hcl
resource_group_name     = "rg-url-shortener"
app_service_plan_name   = "asp-url-shortener"
web_app_name            = "urlshortenerapp12345"
docker_image            = "xamuel09/url-shortener:latest"
location                = "West Europe"
```

---

## 🖼️ Architecture Diagram

Coming soon! (See below for how to create this visually)

---

## 📝 License

This project is licensed under the MIT License.

---

##  Author

**Samuel Happiness**
[GitHub](https://github.com/It-samuel) • [LinkedIn](https://www.linkedin.com/in/happiness-samuel-54a209225/)
