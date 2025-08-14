#!/bin/bash
set -e

echo "=== Terraform + Docker Destroy Script ==="

# Go to script directory
cd "$(dirname "$0")"

echo "[1/2] Destroying Terraform-managed resources..."
terraform destroy -auto-approve

echo "[2/2] All resources removed successfully! ✅"
