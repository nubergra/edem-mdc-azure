# **Azure Storage - Exercise 3: Create an Azure SQL Database**

## **Objective**

In this exercise, we will create an **Azure SQL Database** to store structured data. We will explore the process of provisioning a database and setting up tables to store data. This will be a **guided exercise** led by the instructor.  

## **Steps**

1. **Create an Azure SQL Database** using the Azure Portal.
2. **Configure the database** for access and authentication.
3. **Create a table** within the database to store data:

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date DATE NOT NULL,
    location VARCHAR(100)
);
```

4. **Insert sample data** into the table.

```sql
INSERT INTO customers (customer_id, name, email, join_date, location) VALUES
(101, 'John Doe', 'john.doe@example.com', '2022-05-14', 'New York'),
(102, 'Jane Smith', 'jane.smith@example.com', '2023-01-22', 'Los Angeles'),
(103, 'Emily Johnson', 'emily.j@example.com', '2021-11-30', 'Chicago'),
(104, 'Michael Brown', 'michael.b@example.com', '2020-08-17', 'Houston'),
(105, 'Sarah Wilson', 'sarah.w@example.com', '2023-03-10', 'San Francisco');
```

## 🧯 **Cost management**
Azure SQL Database is available for a **free tier** in Azure, but **using money from your $200** pool. To **minimize costs**:

- ✅ Use **serverless + auto-pause**
- ✅ Keep the storage size low (2 GB)
- ✅ Delete the SQL Server and database when not in use
- ✅ Monitor costs: Go to **Cost Management** → **Cost analysis**
- ✅ Use **Resource Groups** so you can delete everything in one click

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)
- 📖 [Azure SQL Database Documentation](https://learn.microsoft.com/en-us/azure/azure-sql/database/?view=azuresql)