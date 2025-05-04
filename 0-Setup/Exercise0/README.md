# 🌟 Create a Resource Group in Azure

## 🖥️ Using the Azure Portal

1. Sign in to the [Azure Portal](https://portal.azure.com).
2. In the left-hand menu, select **Resource groups**.
3. Click on **+ Create**.
4. Fill in the following fields:
    - **Subscription**: Select the subscription where you want to create the group.
    - **Resource group**: Enter a unique name for the group.
    - **Region**: Select the location where the resources will be stored.
5. Click on **Review + Create** and then on **Create**.

## 📟 Using Azure CLI

### 🔑 Prerequisites

- Azure CLI installed on your machine
- Active Azure subscription

### 🚀 Step-by-Step Guide

1. Open a terminal with Azure CLI installed.
2. Make sure you are logged in with `az login`.
3. Run the following commands to create and manage a resource group:

    ```bash
    # 1️⃣ Azure Login
    az login

    # 2️⃣ Set Subscription to work with
    az account set --subscription "ID or Name Subscription"

    # 3️⃣ Create the resource group
    az group create --name <resource_group_name> --location <region_name>

    # 4️⃣ Add tags to the resource group
    az group update --name <resource_group_name>--tags <Tag Key>=<Tag Value>

    # 5️⃣ (Optional) Delete the resource group
    az group delete --name <resource_group_name> --yes --no-wait
    ```

### 📝 Example Usage

```bash
# Create a resource group in Europe
az group create --name rg-edem-dogc-001 --location westeurope
```

This command creates a resource group named `rg-edem-dogc-001` in the `westeurope` region.

> 💡 **Note**: Replace the name and location values with your desired configuration.

## 🎯 Objective

The final goal of this exercise is to create an Azure Resource Group using Terraform. This will help you understand how to use Infrastructure as Code (IaC) to automate resource creation in Azure.

## 📚 Additional Resources

- [Azure Subscription Service Limits](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/azure-subscription-service-limits)
- [Azure Regions](https://azure.microsoft.com/en-us/global-infrastructure/regions/)
- [Resource Naming Conventions](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
