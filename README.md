# AWS Setup for Demos

Repo contains Terraform configurations that allow me to rapidly create and tear down AWS resources as needed. The `terraform_fmt_and_validate.py` script should **always be run locally** before pushing code to version control. This ensures that all Terraform configurations are properly formatted and valid before being committed to the repository.

## Variable Mapping Disclaimer
⚠️ **IMPORTANT DISCLAIMER**: For this to work, the variables need to map correctly across 3 layers: The Module, The dev/prod environment and the dev/prod values.

## Folder Structure

This repository is organized as follows:

### `environments/`
Contains environment-specific Terraform configurations. Each subdirectory represents a separate deployment environment:
- **`dev/`** - Development environment configuration
  - Typically used for testing and development purposes
  - Contains `backend.tf`, `main.tf`, `outputs.tf`, `providers.tf`, `terraform.tfvars`, and `variables.tf`
- **`prod/`** - Production environment configuration
  - Used for production deployments
  - Contains `main.tf` and other environment-specific configurations

### `modules/`
Contains reusable Terraform modules that are referenced by the environment configurations:
- **`compute/`** - Module for compute resources (e.g., EC2 instances, Auto Scaling Groups)
- **`networking/`** - Module for networking resources (e.g., VPCs, subnets, security groups)

### `scripts/`
Contains utility scripts for managing the infrastructure:
- **`terraform_fmt_and_validate.py`** - Python script to format and validate all Terraform configurations
- **`create_modules_files.py`** - Python script for scaffolding/generating module files

## License

This repository is licensed under the MIT License. See the `LICENSE` file for details.
