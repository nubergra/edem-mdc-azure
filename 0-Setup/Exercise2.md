# Exercise 0: Configuring a Virtual Machine in Azure

In this exercise, you will learn how to set up a virtual machine (VM) in Azure using both the Azure portal and Azure CLI.

## Objectives
1. Create a virtual machine using the Azure portal.
2. Create a virtual machine using Azure CLI.

---

## Part 1: Create a Virtual Machine using the Azure Portal

1. Sign in to the [Azure portal](https://portal.azure.com/).
2. In the left menu, select **Virtual Machines** and click **+ Create > Virtual Machine**.
3. Fill in the required fields:
    - **Resource group**: Create a new one or select an existing one.
    - **Virtual machine name**: Enter a unique name.
    - **Region**: Select a region close to your location.
    - **Image**: Select an operating system image (e.g., Ubuntu Server 20.04 LTS).
    - **Size**: Select an appropriate size for the VM.
    - **Username and password**: Configure access credentials.
4. Click **Review + create** and then **Create**.

---

## Part 2: Create a Virtual Machine using Azure CLI

1. Open a terminal and make sure you're logged into Azure:
    ```bash
    az login
    ```
2. Create a resource group:
    ```bash
    az group create --name MyResourceGroup --location eastus
    ```
3. Create the virtual machine:
    ```bash
    az vm create \
      --resource-group MyResourceGroup \
      --name MyVirtualMachine \
      --image UbuntuLTS \
      --admin-username azureuser \
      --generate-ssh-keys
    ```
4. Verify that the virtual machine has been created successfully:
    ```bash
    az vm list --resource-group MyResourceGroup --output table
    ```

---

## Resource Cleanup

To avoid unnecessary costs, delete the resources created after completing the exercise:

1. Using Azure CLI:
    ```bash
    az group delete --name MyResourceGroup --yes --no-wait
    ```

2. Using the Azure portal:
    - Go to **Resource groups**, select the created group and click **Delete resource group**.

---

Congratulations! You have configured a virtual machine in Azure using both the portal and Azure CLI.
