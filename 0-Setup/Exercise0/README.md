# Create a Resource Group in Azure

## Using the Azure Portal

1. Sign in to the [Azure Portal](https://portal.azure.com).
2. In the left-hand menu, select **Resource groups**.
3. Click on **+ Create**.
4. Fill in the following fields:
    - **Subscription**: Select the subscription where you want to create the group.
    - **Resource group**: Enter a unique name for the group.
    - **Region**: Select the location where the resources will be stored.
5. Click on **Review + Create** and then on **Create**.

## Using Azure CLI

1. Open a terminal with Azure CLI installed.
2. Make sure you are logged in with `az login`.
3. Run the following command to create a resource group:

    ```bash
    az login
    az account set --subscription "ID or Name Subscription"

    az_region="<RegionName>"
    az_suffix="dg"
    az_project="edem"
    az_env="development"

    az_resource_group_name="rg-$az_env-$az_project-$az_suffix"

    az group create --name $az_resource_group_name --location $az_region
    az group update --name $az_resource_group_name --tags Environment=$az_env Project=$az_project

    az group delete --name $az_resource_group_name --yes --no-wait
    ```

    Replace `<GroupName>` with the desired name and `<RegionName>` with the az_region (e.g., `eastus`,`spaincentral`).

### Example:

```bash
az group create --name MyResourceGroup --location eastus
```

This will create a resource group named `MyResourceGroup` in the `East US` region.