# 🛠️ Guide to Setting Up a Local Environment for Working with Azure using Azure CLI

## ✅ Prerequisites

1. **💻 Operating System**: Make sure your operating system is compatible:
    - Windows 10 or higher
    - macOS 10.13 or higher
    - Compatible Linux distributions

2. **🌐 Web Browser**: You'll need an updated web browser to access the Azure portal.

## 📥 Step 1: Installing Azure CLI

### 🪟 Windows

1. Download the Azure CLI installer from [this link](https://aka.ms/installazurecliwindows).
2. Run the installer and follow the on-screen instructions.

### 🍎 macOS

1. Open Terminal.
2. Run the following command to install Azure CLI using Homebrew:

    ```sh
    brew update && brew install azure-cli
    ```

### 🐧 Linux

1. Open Terminal.
2. Run the following commands:

    ```sh
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    ```

## ✔️ Step 2: Verify Installation

1. Open a new terminal window or command prompt.
2. Run the following command to verify that Azure CLI has been installed correctly:

    ```sh
    az --version
    ```

## 🔑 Step 3: Sign in to Azure

1. In the terminal, run the following command to sign in:

    ```sh
    az login
    ```

2. A new browser window will open requesting your Azure credentials. Enter your credentials and follow the instructions.

## ⚙️ Step 4: Configure the Environment

1. Select the Azure subscription you want to use:

    ```sh
    az account set --subscription "your-subscription-name"
    ```

## 💡 Step 5: Basic Commands

- **📋 List resources**:

  ```sh
  az resource list
  ```

- **📁 Create a resource group**:

  ```sh
  az group create --name GroupName --location location
  ```

- **🗑️ Delete a resource group**:

  ```sh
  az group delete --name GroupName
  ```

## 📚 Additional Resources

- [📖 Azure CLI Official Documentation](https://docs.microsoft.com/en-us/cli/azure/)
- [🎓 Azure Tutorials](https://docs.microsoft.com/en-us/learn/azure/)

✨ Done! Now you have your local environment configured to work with Azure using Azure CLI.
