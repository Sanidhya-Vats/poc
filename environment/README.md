# Azure Infrastructure with AKS, ACR, and MySQL Flexible Server

This project uses Terraform to create an Azure infrastructure that includes an Azure Kubernetes Service (AKS), an Azure Container Registry (ACR), and an Azure MySQL Flexible Server. The project is structured in a modular way, allowing for easy management and scalability.

## Project Structure

- **environment/**: Root directory containing Terraform configuration files.
  - **main.tf**: Main entry point for the Terraform configuration.
  - **variables.tf**: Input variables for the Terraform configuration.
  - **outputs.tf**: Output values for the Terraform configuration.
  - **terraform.tfvars**: Values for the input variables.
  - **modules/**: Directory containing child modules for AKS, ACR, and MySQL Flexible Server.
    - **aks/**: Module for Azure Kubernetes Service.
      - **main.tf**: Configuration for AKS.
      - **variables.tf**: Input variables for AKS module.
      - **outputs.tf**: Output values for AKS module.
    - **acr/**: Module for Azure Container Registry.
      - **main.tf**: Configuration for ACR.
      - **variables.tf**: Input variables for ACR module.
      - **outputs.tf**: Output values for ACR module.
    - **mysql_flexible_server/**: Module for Azure MySQL Flexible Server.
      - **main.tf**: Configuration for MySQL Flexible Server.
      - **variables.tf**: Input variables for MySQL module.
      - **outputs.tf**: Output values for MySQL module.

## Getting Started

1. **Prerequisites**: Ensure you have Terraform installed and configured on your machine. You will also need an Azure account.

2. **Clone the Repository**: Clone this repository to your local machine.

3. **Navigate to the Environment Directory**: Change into the `environment` directory.

4. **Initialize Terraform**: Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

5. **Configure Variables**: Update the `terraform.tfvars` file with your specific configurations.

6. **Plan the Deployment**: Run the following command to see what resources will be created:
   ```
   terraform plan
   ```

7. **Apply the Configuration**: Deploy the infrastructure by running:
   ```
   terraform apply
   ```

8. **Access Outputs**: After the deployment is complete, you can view the output values defined in `outputs.tf`.

## Cleanup

To remove the resources created by Terraform, run:
```
terraform destroy
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.