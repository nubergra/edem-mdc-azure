# Introduction to Azure Cloud

## Azure Introduction Exercise

In this exercise, you will learn how to create and configure various elements in Azure, including resource groups, virtual networks, Azure functions, RBAC permissions, and Data Factory blob storage, both from the Azure Portal and command line using Azure CLI. Additionally, we will use these resources to upload a flat file or JSON to Blob Storage, which will be processed by an Azure Function to create new files and store them in other containers. Finally, these files will trigger a transformation and loading process in Data Factory.

### Step 1: Create a Resource Group

#### From Azure Portal

1. Open the [Azure Portal](https://portal.azure.com/).
2. Navigate to "Resource groups".
3. Click "Add".
4. Enter a name for the resource group.
5. Select a region.
6. Click "Review + create" and then "Create".

#### From Command Line (Azure CLI) - Resource Group

```sh
az group create --name ResourceGroupName --location Region
```

### Step 2: Create a Virtual Network (VNet)

#### From Azure Portal

1. In the Azure Portal, navigate to "Virtual networks".
2. Click "Add".
3. Enter a name for the virtual network.
4. Select the resource group created in the previous step.
5. Configure the address space and subnets.
6. Click "Review + create" and then "Create".

#### From Command Line (Azure CLI)

```sh
az network vnet create --resource-group ResourceGroupName --name VNetName --address-prefix AddressPrefix --subnet-name SubnetName --subnet-prefix SubnetAddressPrefix
```

### Step 3: Create an Azure Function

#### From Azure Portal

1. Navigate to "Azure Functions" in the Azure Portal.
2. Click "Add".
3. Select "Create from scratch".
4. Enter a name for the function.
5. Select the resource group and region.
6. Configure the hosting plan and operating system.
7. Click "Review + create" and then "Create".

#### From Command Line (Azure CLI)

```sh
az functionapp create --resource-group ResourceGroupName --consumption-plan-location Region --runtime Runtime --functions-version Version --name FunctionName --storage-account StorageAccountName
```

### Step 4: Assign RBAC Permissions

#### From Azure Portal

1. Navigate to the created resource group.
2. Click "Access control (IAM)".
3. Click "Add" and select "Add role assignment".
4. Select the role you want to assign (e.g., "Contributor").
5. Select the user or group you want to assign the role to.
6. Click "Save".

#### From Command Line (Azure CLI)

```sh
az role assignment create --assignee UserOrGroup --role Role --resource-group ResourceGroupName
```

### Step 5: Configure Data Factory Blob Storage

#### From Azure Portal

1. Navigate to "Data Factory" in the Azure Portal.
2. Click "Add".
3. Enter a name for the Data Factory instance.
4. Select the resource group and region.
5. Click "Review + create" and then "Create".
6. Once created, navigate to "Blob Storage".
7. Configure a storage account and blob container.
8. Connect Data Factory to the configured blob storage.

#### From Command Line (Azure CLI)

```sh
az datafactory create --resource-group ResourceGroupName --factory-name DataFactoryName --location Region
az storage account create --name StorageAccountName --resource-group ResourceGroupName --location Region --sku Standard_LRS
az storage container create --name ContainerName --account-name StorageAccountName
```

### Step 6: Upload and Process Files with Azure Function

#### From Azure Portal

1. Navigate to "Azure Functions" and select the created function.
2. Configure the function to trigger when files are uploaded to Blob Storage.
3. Implement the function code to process the file and create new files.
4. Configure the function output to store new files in other containers.

#### From Command Line (Azure CLI)

```sh
# Function code deployment
# (This step may vary depending on the language and function logic)
```

### Step 7: Configure Transformation and Loading Process in Data Factory

#### From Azure Portal

1. Navigate to "Data Factory" and select the created instance.
2. Configure a pipeline to trigger when new files arrive in the containers.
3. Define the necessary transformation and loading activities.
4. Publish and run the pipeline.

#### From Command Line (Azure CLI)

```sh
# Pipeline configuration
# (This step may vary depending on the pipeline logic)
```

Congratulations! You have completed the Azure introduction exercise.
