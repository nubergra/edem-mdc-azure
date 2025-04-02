# Crear un Grupo de Recursos en Azure

## Usando el Portal de Azure

1. Inicia sesión en el [Portal de Azure](https://portal.azure.com).
2. En el menú de la izquierda, selecciona **Grupos de recursos**.
3. Haz clic en **+ Crear**.
4. Completa los siguientes campos:
    - **Suscripción**: Selecciona la suscripción donde deseas crear el grupo.
    - **Grupo de recursos**: Ingresa un nombre único para el grupo.
    - **Región**: Selecciona la ubicación donde se almacenarán los recursos.
5. Haz clic en **Revisar y crear** y luego en **Crear**.

## Usando Azure CLI

1. Abre una terminal con Azure CLI instalado.
2. Asegúrate de haber iniciado sesión con `az login`.
3. Ejecuta el siguiente comando para crear un grupo de recursos:

    ```bash
    az group create --name <NombreDelGrupo> --location <Ubicacion>
    ```

    Reemplaza `<NombreDelGrupo>` con el nombre deseado y `<Ubicacion>` con la región (por ejemplo, `eastus`).

### Ejemplo:

```bash
az group create --name MiGrupoDeRecursos --location eastus
```

Esto creará un grupo de recursos llamado `MiGrupoDeRecursos` en la región `East US`.