# Azure Processing - Extra Exercise 2: Streamlit App for Interactive Data Analysis using Azure Container Apps

## **Objective**

In this exercise, you'll create two separate containers:

- One for **data processing** (e.g., a FastAPI or pure Python service that processes CSVs).
- One for a **Streamlit frontend** that allows users to upload a CSV, request processing from the data service, and display results interactively.

---

## **Architecture Overview**

```
User --> Streamlit App (UI) --> API Call --> Processing Container (FastAPI or script) --> Data Returned
```

Both components are deployed to **Azure Container Apps**, with the Streamlit container being the one that is exposed to the Internet.

---

## **Steps**

1. **Create the processing container** (can reuse or extend previous FastAPI app or a Python script served via FastAPI):

   * It accepts a file name or file contents.
   * Performs transformations (e.g., filter PG-13, aggregate genres).
   * Returns JSON.

2. **Create a separate Streamlit app container** that:

   * Offers file upload or dropdowns to select datasets.
   * Sends the file or request to the processing container via REST.
   * Displays the resulting data interactively (e.g., tables, charts).

3. **Push both containers to Azure Container Registry**.

4. **Deploy both containers to Azure Container Apps**:

   * Configure public endpoints.
   * Optionally secure the backend container using internal access only.

5. **Test the entire flow** by uploading a CSV in Streamlit and reviewing visualized results.
6. **Delete** all resources once you are done with the exercise.

Remember to use **Terraform** to automate the deployment.

---

## **Extras**

- Add **Plotly** for rich visualizations in Streamlit.
- Integrate **Blob Storage access** for reading/writing files instead of uploading to the endpoint.
- Configure secure access to the FastAPI endpoints by requiring an **API key**. The accepted API keys could be set as a **secret** for the container.

---

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Container Apps Documentation](https://learn.microsoft.com/en-us/azure/container-apps/)
- 📖 [FastAPI Documentation](https://fastapi.tiangolo.com/)
- 🌐 [Streamlit Documentation](https://docs.streamlit.io/)
- 📊 [Plotly in Streamlit](https://docs.streamlit.io/develop/api-reference/charts/st.plotly_chart)