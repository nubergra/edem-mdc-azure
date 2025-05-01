# **Azure Storage - Exercise 7: Automating the Creation of an Azure Database for PostgreSQL**

## **Objective**

In this exercise, we will automate the creation of an **Azure Database for PostgreSQL** instance using **Terraform**. We will then set up a script to interact with the PostgreSQL database and insert data programmatically.

## **Steps**

1. **Provision an Azure Database for PostgreSQL** instance using **Terraform**.
2. Create a **Python script** that:
    - **Creates** a PostgreSQL database Using the **psycopg2** library
    - **Connects** to the PostgreSQL database using the **sqlalchemy** library.
    - To simplify, **create a single table** based on the [`holiday_songs.csv`](./data/holiday_songs.csv) schema and **insert** its **data** into the table **using the sqlalchemy base models and the add method**.
    - Create functions to **run sample queries using sqlalchemy query and filter** features, like:
        - Fetching the top songs.
        - Updating song positions.
        - Deleting a song. 
3. Once you are done with the exercise, **delete** the Azure Database for PostgreSQL server.

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)
- 📖 [Azure Database for PostgreSQL Documentation](https://learn.microsoft.com/en-us/azure/postgresql/)
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- 📖 [SQLAlchemy Overview](https://docs.sqlalchemy.org/en/14/intro.html#code-examples)
- 📖 [SQLAlchemy ORM Examples](https://docs.sqlalchemy.org/en/14/orm/examples.html)