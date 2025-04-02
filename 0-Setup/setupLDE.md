# Guía para Configurar un Ambiente Local para Trabajar con Azure usando el Azure CLI

## Requisitos Previos

1. **Sistema Operativo**: Asegúrate de que tu sistema operativo sea compatible:
    - Windows 10 o superior
    - macOS 10.13 o superior
    - Distribuciones de Linux compatibles

2. **Navegador Web**: Necesitarás un navegador web actualizado para acceder al portal de Azure.

## Paso 1: Instalación de Azure CLI

### Windows

1. Descarga el instalador de Azure CLI desde [este enlace](https://aka.ms/installazurecliwindows).
2. Ejecuta el instalador y sigue las instrucciones en pantalla.

### macOS

1. Abre la Terminal.
2. Ejecuta el siguiente comando para instalar Azure CLI usando Homebrew:

    ```sh
    brew update && brew install azure-cli
    ```

### Linux

1. Abre la Terminal.
2. Ejecuta los siguientes comandos:

    ```sh
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    ```

## Paso 2: Verificar la Instalación

1. Abre una nueva ventana de terminal o símbolo del sistema.
2. Ejecuta el siguiente comando para verificar que Azure CLI se haya instalado correctamente:

    ```sh
    az --version
    ```

## Paso 3: Iniciar Sesión en Azure

1. En la terminal, ejecuta el siguiente comando para iniciar sesión:

    ```sh
    az login
    ```

2. Se abrirá una nueva ventana del navegador solicitando tus credenciales de Azure. Ingresa tus credenciales y sigue las instrucciones.

## Paso 4: Configurar el Entorno

1. Selecciona la suscripción de Azure que deseas usar:

    ```sh
    az account set --subscription "nombre-de-tu-suscripción"
    ```

## Paso 5: Comandos Básicos

- **Listar recursos**:

  ```sh
  az resource list
  ```

- **Crear un grupo de recursos**:

  ```sh
  az group create --name NombreDelGrupo --location ubicacion
  ```

- **Eliminar un grupo de recursos**:

  ```sh
  az group delete --name NombreDelGrupo
  ```

## Recursos Adicionales

- [Documentación Oficial de Azure CLI](https://docs.microsoft.com/es-es/cli/azure/)
- [Tutoriales de Azure](https://docs.microsoft.com/es-es/learn/azure/)

¡Listo! Ahora tienes tu ambiente local configurado para trabajar con Azure usando el Azure CLI.
