# Ejercicio 0: Configuración de una Máquina Virtual en Azure

En este ejercicio, aprenderás a configurar una máquina virtual (VM) en Azure utilizando el portal de Azure y la Azure CLI.

## Objetivos
1. Crear una máquina virtual usando el portal de Azure.
2. Crear una máquina virtual usando la Azure CLI.

---

## Parte 1: Crear una Máquina Virtual usando el Portal de Azure

1. Inicia sesión en el [portal de Azure](https://portal.azure.com/).
2. En el menú de la izquierda, selecciona **Máquinas virtuales** y haz clic en **+ Crear > Máquina virtual**.
3. Completa los campos requeridos:
    - **Grupo de recursos**: Crea uno nuevo o selecciona uno existente.
    - **Nombre de la máquina virtual**: Escribe un nombre único.
    - **Región**: Selecciona una región cercana a tu ubicación.
    - **Imagen**: Selecciona una imagen del sistema operativo (por ejemplo, Ubuntu Server 20.04 LTS).
    - **Tamaño**: Selecciona un tamaño adecuado para la VM.
    - **Nombre de usuario y contraseña**: Configura las credenciales de acceso.
4. Haz clic en **Revisar y crear** y luego en **Crear**.

---

## Parte 2: Crear una Máquina Virtual usando la Azure CLI

1. Abre una terminal y asegúrate de haber iniciado sesión en Azure:
    ```bash
    az login
    ```
2. Crea un grupo de recursos:
    ```bash
    az group create --name MiGrupoDeRecursos --location eastus
    ```
3. Crea la máquina virtual:
    ```bash
    az vm create \
      --resource-group MiGrupoDeRecursos \
      --name MiMaquinaVirtual \
      --image UbuntuLTS \
      --admin-username azureuser \
      --generate-ssh-keys
    ```
4. Verifica que la máquina virtual se haya creado correctamente:
    ```bash
    az vm list --resource-group MiGrupoDeRecursos --output table
    ```

---

## Limpieza de Recursos

Para evitar costos innecesarios, elimina los recursos creados al finalizar el ejercicio:

1. Usando la Azure CLI:
    ```bash
    az group delete --name MiGrupoDeRecursos --yes --no-wait
    ```

2. Usando el portal de Azure:
    - Ve a **Grupos de recursos**, selecciona el grupo creado y haz clic en **Eliminar grupo de recursos**.

---

¡Felicidades! Has configurado una máquina virtual en Azure usando el portal y la Azure CLI.