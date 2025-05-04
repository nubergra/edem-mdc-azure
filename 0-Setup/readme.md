# 🚀 Azure Cloud Setup and Basic Operations

This section contains exercises and configuration guides to help you get started with Azure Cloud. Each exercise focuses on essential Azure operations and services.

## 🎯 Getting Started

1. Begin with the configuration guides in the Configure folder
2. Complete Exercise 0 to learn about resource groups
3. Progress through the remaining exercises in order
4. Refer to the comprehensive introduction exercise for advanced scenarios

Each exercise includes step-by-step instructions using both the Azure Portal and Azure CLI, allowing you to learn both graphical and command-line approaches to Azure management.

## ⚙️ Configuration Guides

### [🔑 Configure Azure Subscription](./Configure/setup-subscription.md)

Learn how to set up your Azure account and subscription using the free tier benefits.

### [💻 Configure Local Development Environment](./Configure/setup-lde.md)

Set up your local machine for Azure development, including installing and configuring Azure CLI.

### [🛠️ Configure Visual Studio Code](./Configure/setup-ide.md)

Install and configure Visual Studio Code with essential Azure extensions for cloud development.

## 📚 Exercises

### [📁 Exercise 0: Create Resource Groups](./Exercise0/README.md)

Learn how to create and manage resource groups in Azure, which are essential for organizing your cloud resources.

### [🌐 Exercise 1: Virtual Networks](./Exercise1.md)

Create and configure virtual networks in Azure using both the Azure Portal and Azure CLI.

### [🖥️ Exercise 2: Virtual Machines](./Exercise2.md)

Set up virtual machines in Azure and understand the basics of VM management.

## 🌩️ Cloud Services Comparison: Azure, GCP, and AWS

| Feature/Service         | Azure                          | GCP (Google Cloud Platform)       | AWS (Amazon Web Services)         |
|--------------------------|--------------------------------|------------------------------------|------------------------------------|
| Compute                 | Azure Virtual Machines         | Compute Engine                    | EC2 (Elastic Compute Cloud)       |
| Storage                 | Azure Blob Storage             | Cloud Storage                     | S3 (Simple Storage Service)       |
| Databases               | Azure SQL Database             | Cloud SQL                         | RDS (Relational Database Service) |
| Networking              | Azure Virtual Network (VNet)   | Virtual Private Cloud (VPC)       | VPC (Virtual Private Cloud)       |
| Serverless Computing    | Azure Functions                | Cloud Functions                   | AWS Lambda                        |
| Machine Learning        | Azure Machine Learning         | AI Platform                       | SageMaker                         |
| Container Orchestration | Azure Kubernetes Service (AKS) | Google Kubernetes Engine (GKE)    | Amazon Elastic Kubernetes Service (EKS) |
| Identity Management     | Azure Active Directory         | Cloud Identity                    | AWS IAM (Identity and Access Management) |
| Monitoring              | Azure Monitor                  | Stackdriver (now Cloud Operations)| Amazon CloudWatch                 |
| Pricing Model           | Pay-as-you-go                  | Pay-as-you-go                     | Pay-as-you-go                     |

This table provides a high-level comparison of key services offered by Azure, GCP, and AWS, helping you understand their similarities and differences.