# **Azure Storage - Exercise 9: Automating the Creation of an Azure Cosmos DB for NoSQL Account**

## **Objective**

In this exercise, we will automate the creation of an **Azure Cosmos DB for NoSQL** account using **Terraform**. After the account is created, we'll use **Python scripts** for interacting with the Cosmos DB data.

## **Steps**

1. Create an **Azure Cosmos DB for NoSQL account** and create a **database and container inside Cosmos DB** via Terraform.
2. **Use Python scripts** and the **Azure Cosmos DB NoSQL SDK for Python** to insert sample data into the container. You can synthetically generate data for the container with the data of your choice.
3. **Explore the data** using the **Python script** to query the documents.
4. Once you are done with the exercise, **delete** the Cosmos DB account.

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)
- 📖 [Azure Cosmos DB Documentation](https://learn.microsoft.com/en-us/azure/cosmos-db/)
- 📖 [Azure Cosmos DB for NoSQL Python SDK](https://learn.microsoft.com/en-us/azure/cosmos-db/nosql/quickstart-python)
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)