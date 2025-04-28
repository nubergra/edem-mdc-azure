# Azure End-to-end - Exercise 1: Azure Event Hub & Azure Functions & Azure CosmosDB

## **Objective**  

In this exercise, we will set up a **real-time event processing pipeline** using **Azure Event Hub**, **Azure Functions**, and **Azure CosmosDB (NoSQL - MongoDB API)**.  

## **Sample Data (JSON Messages in Event Hub)**  

Each message represents a **real-time transaction**:  

```json
{
  "transaction_id": "txn_1001",
  "customer_id": 1,
  "products": [
    { "product_id": 201, "quantity": 2, "price": 20.00 },
    { "product_id": 202, "quantity": 1, "price": 40.00 }
  ],
  "total_amount": 80.00,
  "timestamp": "2024-03-30T14:23:45Z",
  "payment_method": "Credit Card"
}
```

## **Steps**  

1. Using a **Python script**, **publish JSON messages** with sales transaction data to **Azure Event Hub**.  
2. **Trigger an Azure Function** that **reads messages** from **Event Hub**.  
3. **Process and transform the data** in **Azure Functions**, **transforming the data** into a structured format.  
4. **Store the transformed data** into **Azure CosmosDB (MongoDB API)**.  

## Extra

5. **Query data** in CosmosDB to get insights on the data, like, for example, the total sales per payment method. 

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Event Hub Documentation](https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-about)  
- 📖 [Azure Functions Documentation](https://learn.microsoft.com/en-us/azure/azure-functions/)
- 📖 [Azure Cosmos DB Documentation](https://learn.microsoft.com/en-us/azure/cosmos-db/)