# Azure Processing - Exercise 3: Upload your first Docker image to Azure Container Registry

## **Objective**  

In this exercise, we will create a **Docker container** locally, then push it to **Azure Container Registry (ACR)** using the **Azure CLI**. The first part of this exercise will be a **guided exercise** led by the instructor.  

## **Steps**  

1. **Create an Azure Container Registry (ACR)** in the **Azure Portal**.  
2. **Create a simple FastAPI application** and containerize it with **Docker**. 
3. **Log in to ACR** and push the Docker image using the **Azure CLI**.
4. **Verify that the image is available** in ACR.  

⚠ **If you are working on a Mac**, please note that, since we will deploy the image in Azure Container Apps and it only accepts Linux-based x86-64 (linux/amd64) images, you will need to specifically build for linux/amd64 with the [`docker buildx`](https://docs.docker.com/reference/cli/docker/buildx/build/). 

⚠ Do not delete the resources when you are done, they will be used in the next exercise.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Container Registry Documentation](https://learn.microsoft.com/en-us/azure/container-registry/)  
- 🐳 [Docker Documentation](https://docs.docker.com/)  
- 📖 [FastAPI Documentation](https://fastapi.tiangolo.com/)  