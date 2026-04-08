# Azure Processing - Exercise 2: Automating Azure Event Hub Creation

## **Objective**  

In this exercise, we will **automate** the creation of an **Event Hub Namespace and Event Hub** using **Terraform**. We will then use a Python script to publish events to the event hub, process them with a second script, and perform some data transformation.

## **Steps**  

1. **Automate the creation** of an **Event Hub Namespace and event hub** using **Terraform**. To lower the costs, make sure the Azure Event Hubs namespace has the Basic pricing tier. 
2. **Publish messages** to the event hub with a Python script using the Azure Event Hub library for Python. For the data, you could simulate data coming from a machine in a factory line with its telemetry data. Send the message every 5 seconds and avoid running the script for a long time.
3. **Process the messages** with another Python script. The function should log the event it receives. Consider modifying the data before logging it. 
4. Once you are done with the exercise, **delete** the created resources.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Event Hub Documentation](https://learn.microsoft.com/en-us/azure/event-hubs/)  
- 📖 [Send events to or receive events from event hubs by using Python](https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-python-get-started-send?tabs=passwordless%2Croles-azure-portal)
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)