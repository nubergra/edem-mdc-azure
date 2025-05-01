# **Azure Storage - Exercise 8: Create an Azure Cosmos DB for NoSQL Account**

## **Objective**

In this exercise, we will create an **Azure Cosmos DB for NoSQL account** using the **Azure Portal**. We will create a NoSQL database, a container (similar to collections in MongoDB), and insert sample data. This will be a **guided exercise** led by the instructor.  

## **Steps**

1. **Create an Azure Cosmos DB for NoSQL account** using the **Azure Portal** (choose the **Core (SQL) API** for NoSQL).
2. From the **Data Explorer**, create a **container** and **database** to store holiday songs.
3. **Insert sample data** into the container using the **Azure Portal**:

```json
{
  "year": 2011,
  "position": 1,
  "song": "All I Want For Christmas Is You",
  "artist": "Mariah Carey",
  "chart_date": "2011-12-10",
}
```

4. **Explore the data** using CosmosDB **Data Explorer** in the Azure Portal. Run this query:

```sql
SELECT VALUE {
    "year": h.year,
    "artist": h.artist,
    "song_position": CONCAT(h.song, ' - ', TO_STRING(h.position))
}
FROM
    holiday_songs h
WHERE
    STRINGEQUALS(h.artist, "Mariah Carey", true)
```
5. Once you finish the exercise, **delete** the Cosmos DB account.

## **Resources**

- 📌 [Azure Portal](https://portal.azure.com)
- 📖 [Azure Cosmos DB Documentation](https://learn.microsoft.com/en-us/azure/cosmos-db/)
- 🖥 [Cosmos DB UI for Querying and Data Management](https://learn.microsoft.com/en-us/azure/cosmos-db/data-explorer)
