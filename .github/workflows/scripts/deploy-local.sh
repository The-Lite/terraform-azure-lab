
#!/usr/bin/env bash
set -euo pipefail

echo "Starting local Floci deployment..."

# Check required tools
command -v terraform >/dev/null
command -v docker >/dev/null

# Check Docker availability
docker info >/dev/null

# Confirm Floci is reachable
curl --fail --silent \
  --max-time 5 \
  http://localhost:4577/ >/dev/null || {
    echo "Floci is not reachable."
    exit 1
  }

# Initialize Terraform
terraform init

# Check formatting and configuration
terraform fmt -check -recursive
terraform validate

# Create deployment plan
terraform plan -out=local.tfplan

# Require manual approval
echo "Review the plan above."
read -r -p "Apply changes? (yes/no): " answer

if [[ "$answer" != "yes" ]]; then
  echo "Deployment cancelled."
  exit 0
fi

# Deploy
terraform apply local.tfplan

# Clean up saved plan
rm -f local.tfplan

echo "Local deployment completed."
