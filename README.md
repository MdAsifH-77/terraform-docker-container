# Terraform + Docker: Nginx Container Provisioning

This project demonstrates **Infrastructure as Code (IaC)** using [Terraform](https://developer.hashicorp.com/terraform) to provision and manage a local **Docker container** running the Nginx web server.

---

## 🚀 Features
- **Provision with IaC** – Automatically pull the `nginx:latest` Docker image and create a running container.
- **Expose on localhost:8080** – Easily test in your browser or with `curl`.
- **Deploy & Destroy Scripts** – One-click scripts for setup and cleanup.
- **State Management** – Explore Terraform state to understand how resources are tracked.

---

## 🛠 Tech Stack
- **Terraform** (Infrastructure as Code)
- **Docker** (Container runtime)
- **Nginx** (Web server)
- **Bash** (Automation scripts)

---

## 📂 Project Structure
```plaintext
terraform-docker-container/
│── main.tf               # Terraform configuration
│── deploy.sh             # One-click deployment script
│── destroy.sh            # One-click cleanup script
│── .gitignore            # Ignore Terraform state files
│── README.md             # Documentation & usage
│── sample-logs.txt       # Example Terraform apply output
