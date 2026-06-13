# AWS Setup for Demos

I personally use this repository to quickly setup my AWS environment for personal and proof-of-concept testing of my projects. It contains Terraform configurations that allow me to rapidly create and tear down AWS resources as needed.

## Format and Validate Script

⚠️ **IMPORTANT DISCLAIMER**: The `terraform_fmt_and_validate.py` script should **always be run locally** before pushing code to version control. This ensures that all Terraform configurations are properly formatted and valid before being committed to the repository.

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

