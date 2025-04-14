provider "azurerm" {
    features {}
    use_cli = true
    subscription_id = "<YOUR SUBSCRIPTION ID>"
}

# Variables
variable "region" {
  description = "Región de Azure"
  default     = "spaincentral"
  validation {
    condition     = contains(["spaincentral", "northeurope", "westeurope", "europe"], var.region)
    error_message = "La región especificada no es válida. Usa una región válida de Azure."
  }
}

variable "suffix" {
  default = "<YOUR SUFFIX>"
}

variable "project" {
  default = "edem"
}

variable "environment" {
  default = "development"
}

# Nombre del Resource Group
locals {
  rg_name = "${var.project}-${var.environment}-${var.suffix}-rg"
}

resource "azurerm_resource_group" "exercise0" {
  name     = local.rg_name
  location = var.region

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}


# Creación de la Virtual Network (VNet)
resource "azurerm_virtual_network" "exercise1" {
  name                = "vnet-${var.environment}-${var.project}-${var.suffix}"
  location            = azurerm_resource_group.exercise0.location
  resource_group_name = azurerm_resource_group.exercise0.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}

# Creación de la Subnet 1
resource "azurerm_subnet" "exercise1sn1" {
  name                 = "snet-sql-${var.environment}-${var.project}-${var.suffix}"
  resource_group_name  = azurerm_resource_group.exercise0.name
  virtual_network_name = azurerm_virtual_network.exercise1.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Creación de la Subnet 2
resource "azurerm_subnet" "exercise1sn2" {
  name                 = "snet-vm-${var.environment}-${var.project}-${var.suffix}"
  resource_group_name  = azurerm_resource_group.exercise0.name
  virtual_network_name = azurerm_virtual_network.exercise1.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "exercise2nic" {
  name                = "nic-${var.environment}-${var.project}-${var.suffix}"
  location            = azurerm_resource_group.exercise0.location
  resource_group_name = azurerm_resource_group.exercise0.name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.exercise1sn2.id
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_virtual_machine" "exercise2vm" {
  name                  = "vm-${var.environment}-${var.project}-${var.suffix}"
  location              = azurerm_resource_group.exercise0.location
  resource_group_name   = azurerm_resource_group.exercise0.name
  network_interface_ids = [azurerm_network_interface.exercise2nic.id]
  vm_size               = "Standard_B1s"

  # Configuración del disco
  storage_os_disk {
    name              = "osdisk-vm-${var.environment}-${var.project}-${var.suffix}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  # Configuración de la imagen
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  # Credenciales de administrador
  os_profile {
    computer_name  = "hostname"
    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}