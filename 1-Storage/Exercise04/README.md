# **Azure Storage - Exercise 4: Automating the Creation of an Azure SQL Database**

## **Objective**

In this exercise, we will automate the creation of an **Azure SQL Database** using **Terraform**. We will then set up a Python script to interact with the database and insert sample data.

## **Steps**

1. **Provision an Azure SQL Server and an Azure SQL Database** using **Terraform**.
2. **Configure the database** connection in the Python script.
3. **Insert data** into the database using a **Python script**. For the data, you can download or generate CSV files to insert or start with the ones from [exercise 2](../Exercise02/data/).

## **Extras (Optional)**

4. **Perform additional operations** such as querying data or updating records using Python.

## **Tips**

- To **minimize cost**, make sure you set the values **sku_name = "Basic" and max_size_gb = 2** for the Azure SQL Database.
- For connection to SQL Server, you will need to install the [Windows ODBC Driver](https://learn.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-ver16).
- Depending on how you connect to the database, you might also need to **allow access from your IP** or **to your Microsoft Entra User**.

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)
- 📖 [Azure SQL Database Documentation](https://learn.microsoft.com/en-us/azure/sql-database/)
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)