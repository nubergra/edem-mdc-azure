# Azure Processing - Extra Exercise 1: Route HTTP triggered Azure Function data to an Azure Event Hub

## **Objective**  

In this extra exercise, we will **automate** the creation of an **Event Hub Namespace and Event Hub** using **Terraform**. We will then create an HTTP Triggered **Azure Function** that outputs messages to the Azure Event Hub. To do that, we will have a separate Python script that sends the messages to the function.

## **Steps**  

1. **Automate the creation** of an **Event Hub Namespace and event hub** using **Terraform**. 
2. **Create an Azure Function** that is triggered by HTTP events.  
3. Create a **Python script** that sends messages to the Function via HTTP requests.
4. Form the Azure Function, **output the messages to the event hub**.
5. Once you are done with the exercise, **delete** the created resources.

## **Resources**  

- 📌 [Azure Portal](https://portal.azure.com)  
- 📖 [Azure Event Hub Documentation](https://learn.microsoft.com/en-us/azure/event-hubs/)  
- 📖 [Azure Functions Documentation](https://learn.microsoft.com/en-us/azure/azure-functions/)  
- 🛠 [Terraform azurerm Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)