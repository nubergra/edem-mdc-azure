# Introducción a Azure Cloud

## Ejercicio de Introducción a Azure

En este ejercicio, aprenderás a crear y configurar varios elementos en Azure, incluyendo grupos de recursos, redes virtuales, funciones de Azure, permisos RBAC y almacenamiento en blob de Data Factory, tanto desde el Portal de Azure como desde la consola de comandos usando Azure CLI. Además, utilizaremos estos recursos para cargar un archivo plano o JSON al Blob Storage, que será procesado por una Azure Function para crear nuevos archivos y almacenarlos en otros contenedores. Finalmente, estos archivos desencadenarán un proceso de transformación y carga en Data Factory.

### Paso 1: Crear un Grupo de Recursos

#### Desde el Portal de Azure (Portal)

1. Abre el [Portal de Azure](https://portal.azure.com/).
2. Navega a "Grupos de recursos".
3. Haz clic en "Agregar".
4. Introduce un nombre para el grupo de recursos.
5. Selecciona una región.
6. Haz clic en "Revisar + crear" y luego en "Crear".

#### Desde la consola de comandos (Azure CLI) - Grupo de Recursos

```sh
az group create --name NombreDelGrupoDeRecursos --location Region
```

### Paso 2: Crear una Red Virtual (VNet)

#### Desde el Portal de Azure (Portal)

1. En el Portal de Azure, navega a "Redes virtuales".
2. Haz clic en "Agregar".
3. Introduce un nombre para la red virtual.
4. Selecciona el grupo de recursos creado en el paso anterior.
5. Configura el espacio de direcciones y las subredes.
6. Haz clic en "Revisar + crear" y luego en "Crear".

#### Desde la consola de comandos (Azure CLI)

```sh
az network vnet create --resource-group NombreDelGrupoDeRecursos --name NombreDeLaVNet --address-prefix PrefijoDeDirección --subnet-name NombreDeLaSubred --subnet-prefix PrefijoDeDirecciónDeLaSubred
```

### Paso 3: Crear una Función de Azure

#### Desde el Portal de Azure

1. Navega a "Funciones de Azure" en el Portal de Azure.
2. Haz clic en "Agregar".
3. Selecciona "Crear desde cero".
4. Introduce un nombre para la función.
5. Selecciona el grupo de recursos y la región.
6. Configura el plan de hospedaje y el sistema operativo.
7. Haz clic en "Revisar + crear" y luego en "Crear".

#### Desde la consola de comandos (Azure CLI)

```sh
az functionapp create --resource-group NombreDelGrupoDeRecursos --consumption-plan-location Region --runtime Runtime --functions-version Version --name NombreDeLaFunción --storage-account NombreDeLaCuentaDeAlmacenamiento
```

### Paso 4: Asignar Permisos RBAC

#### Desde el Portal de Azure

1. Navega al grupo de recursos creado.
2. Haz clic en "Control de acceso (IAM)".
3. Haz clic en "Agregar" y selecciona "Agregar asignación de roles".
4. Selecciona el rol que deseas asignar (por ejemplo, "Colaborador").
5. Selecciona el usuario o grupo al que deseas asignar el rol.
6. Haz clic en "Guardar".

#### Desde la consola de comandos (Azure CLI)

```sh
az role assignment create --assignee UsuarioOGrupo --role Rol --resource-group NombreDelGrupoDeRecursos
```

### Paso 5: Configurar Almacenamiento en Blob de Data Factory

#### Desde el Portal de Azure

1. Navega a "Data Factory" en el Portal de Azure.
2. Haz clic en "Agregar".
3. Introduce un nombre para la instancia de Data Factory.
4. Selecciona el grupo de recursos y la región.
5. Haz clic en "Revisar + crear" y luego en "Crear".
6. Una vez creada la instancia, navega a "Almacenamiento en Blob".
7. Configura una cuenta de almacenamiento y un contenedor de blobs.
8. Conecta Data Factory al almacenamiento en blob configurado.

#### Desde la consola de comandos (Azure CLI)

```sh
az datafactory create --resource-group NombreDelGrupoDeRecursos --factory-name NombreDeLaDataFactory --location Region
az storage account create --name NombreDeLaCuentaDeAlmacenamiento --resource-group NombreDelGrupoDeRecursos --location Region --sku Standard_LRS
az storage container create --name NombreDelContenedor --account-name NombreDeLaCuentaDeAlmacenamiento
```

### Paso 6: Cargar y Procesar Archivos con Azure Function

#### Desde el Portal de Azure

1. Navega a "Funciones de Azure" y selecciona la función creada.
2. Configura la función para que se active al cargar archivos en el Blob Storage.
3. Implementa el código de la función para procesar el archivo y crear nuevos archivos.
4. Configura la salida de la función para almacenar los nuevos archivos en otros contenedores.

#### Desde la consola de comandos (Azure CLI)

```sh
# Implementación del código de la función
# (Este paso puede variar dependiendo del lenguaje y la lógica de la función)
```

### Paso 7: Configurar Proceso de Transformación y Carga en Data Factory

#### Desde el Portal de Azure

1. Navega a "Data Factory" y selecciona la instancia creada.
2. Configura un pipeline para que se active al recibir nuevos archivos en los contenedores.
3. Define las actividades de transformación y carga necesarias.
4. Publica y ejecuta el pipeline.

#### Desde la consola de comandos (Azure CLI)

```sh
# Configuración del pipeline
# (Este paso puede variar dependiendo de la lógica del pipeline)
```

¡Felicidades! Has completado el ejercicio de introducción a Azure.
