# Azure End-to-end - Extra Exercise 1: Defining an architecture and calculating its costs

## **Objective**  

Design an architecture for a **Data Analytics PoC in Azure**. Estimate the infrastructure cost for a **3-month** duration using the Azure Pricing Calculator.

### **PoC Scenario: SmartFleet Logistics – Centralized Vehicle Telemetry Dashboard**

#### **Company Overview**

**SmartFleet Logistics** operates a fleet of **500 delivery vehicles** across the UK. Each vehicle sends basic telemetry data every 30 seconds, including:

* GPS location
* Speed
* Fuel level
* Engine temperature

Currently, this data is **scattered across multiple regional systems** with no centralized view.

#### 🎯 **PoC Goal**

Create a centralized cloud-based dashboard to **ingest and visualize real-time vehicle telemetry**, enabling SmartFleet to:

* Monitor **live vehicle locations**
* View recent **engine and fuel metrics**
* Store telemetry data for **basic historical lookup (7–30 days)**
* Evaluate **Azure’s capabilities** for a potential company-wide rollout

#### ✅ Success Criteria

* Live map showing all vehicle positions
* Table or chart showing basic metrics (speed, fuel, temperature)
* Telemetry stored and retrievable by vehicle ID and time range

## **Steps**  

1. **Define the architecture** diagram with all of the Azure services that will be needed for the solution. You can use [draw.io](https://www.drawio.com/).
2. Use the **Azure Pricing Calculator** to calculate the cost of the infrastructure.

## **Resources**  

- 📌 [Azure Pricing Calculator](https://azure.microsoft.com/en-us/pricing/calculator/?msockid=031b26ad269166ac0a58327e2796675a)  
- 🖌 [draw.io](https://www.drawio.com/)
