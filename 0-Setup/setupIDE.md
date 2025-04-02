# Configuración de Visual Studio Code para desarrollar con Azure CLI

## Requisitos Previos

1. **Instalar Visual Studio Code**: Descarga e instala [Visual Studio Code](https://code.visualstudio.com/).
2. **Instalar Azure CLI**: Sigue las instrucciones para instalar [Azure CLI](https://docs.microsoft.com/es-es/cli/azure/install-azure-cli).

## Pasos para Configurar Visual Studio Code

1. **Instalar la Extensión de Azure CLI**:
    - Abre Visual Studio Code.
    - Ve a la pestaña de extensiones (`Ctrl+Shift+X`).
    - Busca `Azure CLI Tools` y haz clic en `Instalar`.

2. **Instalar la Extensión de Azure Account**:
    - En la pestaña de extensiones, busca `Azure Account` y haz clic en `Instalar`.

3. **Configurar Azure CLI**:
    - Abre una nueva terminal en Visual Studio Code (`Ctrl+`).
    - Ejecuta `az login` para iniciar sesión en tu cuenta de Azure.

4. **Verificar la Instalación**:
    - En la terminal, ejecuta `az --version` para verificar que Azure CLI está correctamente instalado y configurado.

5. **Configurar el Entorno de Desarrollo**:
    - Crea un nuevo archivo o abre un proyecto existente.
    - Utiliza los comandos de Azure CLI directamente en la terminal integrada de Visual Studio Code.

## Recursos Adicionales

- [Documentación de Azure CLI](https://docs.microsoft.com/es-es/cli/azure/)
- [Documentación de Visual Studio Code](https://code.visualstudio.com/docs)

¡Listo! Ahora tienes Visual Studio Code configurado para desarrollar con Azure CLI.
