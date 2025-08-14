#!/bin/bash
set -e

echo "=== Terraform + Docker Deployment Script ==="

# Go to script directory
cd "$(dirname "$0")"

echo "[1/6] Initializing Terraform..."
terraform init

echo "[2/6] Showing plan..."
terraform plan

echo "[3/6] Applying infrastructure..."
terraform apply -auto-approve

echo "[4/6] Checking running Docker containers..."
docker ps

echo "[5/6] Testing Nginx on http://localhost:8080 ..."
if curl -I --silent http://localhost:8080 | grep "200 OK" > /dev/null; then
    echo "✅ Nginx is running and accessible!"
else
    echo "⚠️ Could not verify Nginx. Please check Docker logs."
fi

echo "[6/6] Done! Use 'terraform destroy -auto-approve' to remove resources."
