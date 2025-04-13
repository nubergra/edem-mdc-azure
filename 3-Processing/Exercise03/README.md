# Azure Processing - Exercise 3: Route MQTT messages in Azure Event Grid to Azure Functions

## **Objective**  

In this exercise, we will **automate** the creation of an **MQTT broker** in **Azure Event Grid** using **Terraform**. We will then publish messages to the broker, process them in an **Azure Function**, and perform some data transformation.

## **Steps**  

1. **Automate the creation** of an **MQTT broker** using **Terraform**.  
2. **Publish messages** to the MQTT broker using a **Python script**.  
3. **Create an Azure Function** to subscribe to the MQTT topic.  
4. **Process the messages** within the Azure Function.  
5. **Log** the processed data.  

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Event Grid MQTT Documentation](https://learn.microsoft.com/en-us/azure/event-grid/mqtt-overview)  
- 📖 [Azure Functions Documentation](https://learn.microsoft.com/en-us/azure/azure-functions/)  
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)