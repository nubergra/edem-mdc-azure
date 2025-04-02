# Azure End-to-end - Exercise 2 (Extra): Blob Storage & Data Factory & Azure SQL Database

## **Objective**  

In this exercise, we will simulate a batch **ETL (Extract, Transform, Load) process** using **Azure Blob Storage**, **Azure Data Factory**, and **Azure SQL Database**. We will ingest sample retail data from **CSV files**, and load it into an **Azure SQL Database** using **Azure Data Factory** pipelines.  

## **Sample Data** (CSV files that will be on the data/ directory for this excercise)

#### `customers.csv`  
| CustomerID | Name         | Email              | SignupDate  | Country  |  
|------------|------------|--------------------|------------|----------|  
| 1          | Alice Doe   | alice@email.com    | 2023-01-10 | USA      |  
| 2          | Bob Smith   | bob@email.com      | 2023-02-15 | Canada   |  
| 3          | Carol Lee   | carol@email.com    | 2023-03-22 | UK       |  
| ...        | ...         | ...                | ...        | ...      |  

#### `orders.csv`  
| OrderID | CustomerID | OrderDate  | TotalAmount | PaymentMethod |  
|---------|------------|------------|-------------|---------------|  
| 101     | 1         | 2024-02-05 | 50.25       | Credit Card   |  
| 102     | 2         | 2024-02-06 | 75.00       | PayPal        |  
| 103     | 1         | 2024-02-07 | 120.99      | Debit Card    |  
| ...     | ...       | ...        | ...         | ...           |  

#### `products.csv`  
| ProductID | Name           | Category      | Price  | StockQuantity |  
|-----------|---------------|--------------|--------|--------------|  
| 201       | T-Shirt       | Clothing      | 20.00  | 500          |  
| 202       | Jeans         | Clothing      | 40.00  | 300          |  
| 203       | Sneakers      | Footwear      | 60.00  | 200          |  
| ...       | ...           | ...          | ...    | ...          |  

#### `order_details.csv`  
| OrderDetailID | OrderID | ProductID | Quantity | PriceAtPurchase |  
|--------------|--------|----------|---------|----------------|  
| 1001         | 101    | 201      | 2       | 20.00          |  
| 1002         | 101    | 202      | 1       | 40.00          |  
| 1003         | 102    | 203      | 1       | 60.00          |  
| ...          | ...    | ...      | ...     | ...            |  

## **Steps**  

1. **Upload sample CSV files** to **Azure Blob Storage**.  
2. **Use Azure Data Factory** to **ingest the data** into an **Azure SQL Database**. Insert **each CSV into its own table** and also create a **new table** with information on the **customer purchase history**.

Feel free to create as many tables as you like with the transformation you come up with. You could also generate a table with the **total sales per product**.

## Extra

3. Modify the Data Factory pipeline to simultainously write to another database of your choice. 
