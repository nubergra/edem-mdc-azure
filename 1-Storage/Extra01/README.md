# **Azure Storage - Extra Exercise 1: My Photo Gallery**

## **Objective**  

In this exercise, we will use **Azure Blob Storage** to upload and serve images to a Streamlit website that will act as your very own **photo gallery**.  

The app should have the following features:

- A page to **upload images to Azure Blob Storage**. Images can be uploaded individually or within a **zip folder**. If a zip is uploded to Blob Storage, the app should use the **Python client libraries for Azure Blob Storage** to download the zip, extract the images and upload them individually. 
- A page with the **photo gallery**, where you should see every **image** uploaded to Azure Blob Storage and its **name**.

## **Keep in mind...**
- You don't need to serve the Streamlit app for this exercise, it can be run locally.
- As an **extra**, you can add buttons to **delete images** from the gallery, **rename** them, etc.
- You can also use **FastAPI** to create endpoints for the operations against Azure Blob Storage to separate the UI from the backend.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Blob Storage Documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/)  
- 📖 [Streamlit Documentation](https://streamlit.io/)  
- 📖 [FastAPI Documentation](https://fastapi.tiangolo.com/)