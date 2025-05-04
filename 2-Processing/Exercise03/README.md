# Azure Processing - Exercise 3: Route Azure Event Hub events to Azure Functions

## **Objective**  

In this exercise, we will **automate** the creation of an **Event Hub Namespace and Event Hub** using **Terraform**. We will then use a Python script to publish events to the event hub, process them in an **Azure Function**, and perform some data transformation.

## **Steps**  

1. **Automate the creation** of an **Event Hub Namespace and event hub** using **Terraform**. To lower the costs, make sure the Azure Event Hubs namespace has the Basic pricing tier. 
2. **Publish messages** to the event hub with a Python script using the Azure Event Hub library for Python. For the data, you could simulate data coming from a machine in a factory line with its telemetry data. Send the message every 5 seconds and avoid running the script for a long time.
3. **Create an Azure Function** that is triggered by the event hub events. Remember to **create the Azure Function App** and to deploy the function to it. You could also automate that creation via Terraform.
4. **Process the messages** within the Azure Function. The function should log the event it receives. Consider modifying the data before logging it. 
5. **Log** the event data.  
6. Once you are done with the exercise, **delete** the created resources.

## **Tips**

- To use the Flex Consumption plan for the Function App, you can set the sku_name to "FC1" for the azurerm_service_plan resource in the Terraform file.
- You might need to set up Application Insights for the Function App to see the streaming logs from the portal. 

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Event Hub Documentation](https://learn.microsoft.com/en-us/azure/event-hubs/)  
- 📖 [Azure Functions Documentation](https://learn.microsoft.com/en-us/azure/azure-functions/)  
- 📖 [Send events to or receive events from event hubs by using Python](https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-python-get-started-send?tabs=passwordless%2Croles-azure-portal)
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)