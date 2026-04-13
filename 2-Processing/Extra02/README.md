# Azure Processing - Extra Exercise 2: Dynamic pipelines in Data Factory

## **Objective**

Create a **dynamic pipeline** in Data Factory by using input **parameters**, **variables**, and **If Condition** activities to handle different data sources or behaviors.

## **Steps**

1. **Modify your pipeline** to accept a parameter (e.g., file name or source container name).
2. Use the parameter in your **source dataset** (e.g., dynamically copy different files).
3. Add an **If Condition activity** to check for a specific value (e.g., if the file name contains `"2024"`, take a different copy path or transformation).
4. Add **success/failure paths** using the **Success/Failure activities** or **Set Variable**.
5. Trigger and monitor the pipeline.
6. Once you are done with the exercise, **delete** the created resources.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Data Factory Pipelines](https://learn.microsoft.com/en-us/azure/data-factory/concepts-pipelines-activities)  