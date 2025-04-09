# 🌐 Creating a Virtual Network in Azure

This exercise will guide you through creating a virtual network in Azure using both the Azure Portal and Azure CLI.

## ✅ Prerequisites

- 🔑 An active Azure account
- If using Azure CLI:
  - 💻 [Azure CLI installed](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
  - 🔓 Logged in with `az login`

## 🖥️ Method 1: Using the Azure Portal

1. **🌟 Access the Azure Portal**
   - Navigate to [portal.azure.com](https://portal.azure.com)
   - Sign in with your Azure account

2. **🌐 Create a Virtual Network**
   - In the top search bar, type "Virtual networks"
   - Click on "Virtual networks" in the results
   - Click on "+ Create"

3. **⚙️ Basic Configuration**
   - **Subscription**: Select your subscription
   - **Resource group**: Create a new one or select an existing one
   - **Name**: Enter a name for your virtual network (example: `my-virtual-network`)
   - **Region**: Select the region closest to you

4. **📝 IP Configuration**
   - **IPv4 address space**: Enter a CIDR range (example: 10.0.0.0/16)
   - **Subnet**:
     - Name: `default`
     - Subnet range: 10.0.0.0/24

5. **✨ Review and Create**
   - Review all settings
   - Click "Create"

## 💻 Method 2: Using Azure CLI

1. **🔑 Sign in to Azure**
   ```bash
   az login
   ```

2. **📁 Create a resource group** (if you don't have one)
   ```bash
   az group create \
     --name myResourceGroup \
     --location westeurope
   ```

3. **🌐 Create the virtual network with a subnet**
   ```bash
   az network vnet create \
     --name my-virtual-network \
     --resource-group myResourceGroup \
     --location westeurope \
     --address-prefix 10.0.0.0/16 \
     --subnet-name default \
     --subnet-prefix 10.0.0.0/24
   ```

4. **✅ Verify the creation**
   ```bash
   az network vnet show \
     --name my-virtual-network \
     --resource-group myResourceGroup
   ```

## 🔍 Verification

To verify that your virtual network has been created correctly:

### 🖥️ In the Portal
- Navigate to "Virtual networks"
- Look for your virtual network name
- Review the overview information and configured subnets

### 💻 With Azure CLI
```bash
# List all virtual networks in the resource group
az network vnet list --resource-group myResourceGroup -o table

# Show details of a specific virtual network
az network vnet show \
  --name my-virtual-network \
  --resource-group myResourceGroup \
  --query '{Name:name, AddressSpace:addressSpace.addressPrefixes[0], Subnets:subnets[].name}' \
  -o table
```

## 📚 Important Concepts

- **🌐 Virtual Network**: An isolated network segment in the Azure cloud
- **📝 Address Space**: The range of IP addresses available in your virtual network (in CIDR format)
- **🔄 Subnet**: A division of your virtual network that helps organize and secure resources
- **📁 Resource Group**: A logical container for related Azure resources

## 📖 Additional Resources

- [📚 Official Azure Virtual Networks Documentation](https://learn.microsoft.com/en-us/azure/virtual-network/)
- [💻 Azure CLI network commands reference](https://learn.microsoft.com/en-us/cli/azure/network/vnet)
- [⭐ Virtual network best practices](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-vnet-plan-design-arm)
