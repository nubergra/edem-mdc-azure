# **Azure Storage - Exercise 2: Automating Blob Storage Creation in Azure**

## **Objective**  

In this exercise, we will **automate** the creation of an **Azure Blob Storage** account and a **container** using **Terraform**. We will then develop **Python scripts** to interact with the storage account by:  

1. Uploading files to a blob storage container.  
2. Listing all files within the container.  
3. Optionally performing additional file operations.  

## **Steps**  

1. **Provision a Blob Storage Account** using **Terraform**.  
2. **Upload files** from the [data](./data/) directory using a **Python script**.  
3. **List all files** in the container using a **Python script**.  

## **Extras (Optional)**  

4. **Implement additional operations** such as downloading, moving, or deleting files using Python.  

## **Tips**

To make sure you create a Blob Storage and not an ADLS storage account, **set the `is_hns_enabled` value to false** when creating the storage account.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Blob Storage Documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/)
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)