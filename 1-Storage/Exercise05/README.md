# **Azure Storage - Exercise 5: Building a Simple Data Lake with Azure Data Lake Storage**

## **Objective**

In this exercise, we will build a **simple data lake solution** using **Azure Data Lake Storage (ADLS)**.

Instead of just uploading files, we will simulate a **real business scenario** where data needs to be:

1. Stored in its **raw form**
2. **Cleaned and enriched**
3. Prepared for **basic analysis**

We will use **Terraform** to create the infrastructure and **Python** to ingest and transform data.

---

## **Use Case: Retail Sales Reporting**

You are working for a retail company that collects:

* Daily **sales transactions**
* A **product catalog**
* A **store list**

Your goal is to:

* Store raw data (**Bronze layer**)
* Clean and enrich it (**Silver layer**)
* Generate a simple **business report dataset** (**Gold layer**)

---

## **Steps**

1. **Provision an ADLS Storage Account and file system** using **Terraform**.
2. **Create a data lake structure** (Bronze, Silver, Gold).
3. **Upload raw data** into the Bronze layer using Python.
4. **Clean and enrich the data** into the Silver layer.
5. **Generate a final dataset** for reporting in the Gold layer.

## **Extras (Optional)**

1. Create a script to **re-run the pipeline safely** for new CSV files (avoid duplicating data). Add a **new sales file** and process only the new data.
2. Create a Python script that prints a **summary report** (total sales, top store, etc.).

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)
- 📖 [Azure Data Lake Storage Documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-introduction)