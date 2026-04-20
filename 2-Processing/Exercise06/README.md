# Azure Processing - Exercise 6: Deploy an Azure Container App Job

## **Objective**

In this exercise, you will deploy an **Azure Container App Job**, which is designed for **event-driven or batch processing workloads**.

You will first create the job manually using the Azure Portal, usin a simple data processing container image. Then, you will **design your own container image for a data modification use case**, and finally **automate the deployment using Terraform** and trigger the job manually. The fist part of the exercise will be led by the instructor.

## **Steps**

1. **Create an Azure Container App Job using the Azure Portal** with **manual trigger** for a [simple data processing job](./data_processing_job/).
2. **Run the job** manually and **observe execution** logs.
3. **Delete the job** to start clean for the next part.
4. **Design and build your own container image** for a data-processing use case:
   * The container should:
     * Read input data from CSV files for the same table in a folder in ADLS.
     * If the data is new or has been modified for the same record (same ID), **load it into another CSV file in a new folder**.
   * Push the image to **Azure Container Registry (ACR)**.
5. **Deploy the Container App Job** and other needed services using **Terraform**:
   * Use the image you created.
   * Configure:
     * **Trigger type**: Manual
     * **Execution timeout and retry policy**
     * **Environment variables (if needed)**
6. **Manually trigger the job** using Azure CLI or Portal.
7. **Validate execution** by reviewing outputs.
  
## **Tips**

To fix an OS error when creating the Container App Job, you can try building the image with:

```
docker buildx build --platform linux/amd64 --provenance=false -t <image_name> .
```

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Container Apps Jobs Documentation](https://learn.microsoft.com/en-us/azure/container-apps/jobs?tabs=azure-cli)  
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
