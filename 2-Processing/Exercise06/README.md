# Azure Processing - Exercise 6: Azure Container App for data transformation

## **Objective**  

In this exercise, we will modify our **Azure Container App** that exposes an API for **data transformation** using FastAPI. The app will accept a CSV file upload, filter specific data, and return the result in JSON format.

## **Steps**  

1. **Modify the FastAPI application** endpoint to accept a CSV file upload via an endpoint. The endpoint has to parse the file and apply a simple filter. You can use the [netflix.csv](./data/netflix.csv) file and filter by movies and series with rating == "PG-13", for example. Return filtered results as JSON in the response.
2. **Containerize the updated application** with a new name using Docker and push it to ACR.   
3. **Deploy a new container app via Terraform** to **Azure Container Apps**.  
4. **Test the application** by sending data to process.  

## **Extra**

- Modify the Terraform script to also deploy the Azure Container Registry.
- Perform other data transformation operations over CSV files.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Container Apps Docuentation](https://learn.microsoft.com/en-us/azure/container-apps)  
- 📖 [FastAPI Documentation](https://fastapi.tiangolo.com/)  
