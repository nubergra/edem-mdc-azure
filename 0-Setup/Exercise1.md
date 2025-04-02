# Creación de una Red Virtual en Azure

Este ejercicio te guiará en la creación de una red virtual en Azure utilizando tanto el Portal de Azure como Azure CLI.

## Requisitos Previos

- Una cuenta activa de Azure
- Si vas a usar Azure CLI:
  - [Azure CLI instalado](https://learn.microsoft.com/es-es/cli/azure/install-azure-cli)
  - Haber iniciado sesión con `az login`

## Método 1: Usando el Portal de Azure

1. **Accede al Portal de Azure**
   - Navega a [portal.azure.com](https://portal.azure.com)
   - Inicia sesión con tu cuenta de Azure

2. **Crear una Red Virtual**s
   - En la barra de búsqueda superior, escribe "Redes virtuales"
   - Haz clic en "Redes virtuales" en los resultados
   - Haz clic en "+ Crear"

3. **Configuración Básica**
   - **Suscripción**: Selecciona tu suscripción
   - **Grupo de recursos**: Crea uno nuevo o selecciona uno existente
   - **Nombre**: Ingresa un nombre para tu red virtual (ejemplo: `mi-red-virtual`)
   - **Región**: Selecciona la región más cercana a ti

4. **Configuración de IP**
   - **Espacio de direcciones IPv4**: Ingresa un rango CIDR (ejemplo: 10.0.0.0/16)
   - **Subred**:
     - Nombre: `default`
     - Rango de subred: 10.0.0.0/24

5. **Revisión y Creación**
   - Revisa toda la configuración
   - Haz clic en "Crear"

## Método 2: Usando Azure CLI

1. **Inicia sesión en Azure**
   ```bash
   az login
   ```

2. **Crea un grupo de recursos** (si no tienes uno)
   ```bash
   az group create \
     --name miGrupoRecursos \
     --location westeurope
   ```

3. **Crea la red virtual con una subred**
   ```bash
   az network vnet create \
     --name mi-red-virtual \
     --resource-group miGrupoRecursos \
     --location westeurope \
     --address-prefix 10.0.0.0/16 \
     --subnet-name default \
     --subnet-prefix 10.0.0.0/24
   ```

4. **Verifica la creación**
   ```bash
   az network vnet show \
     --name mi-red-virtual \
     --resource-group miGrupoRecursos
   ```

## Verificación

Para comprobar que tu red virtual se ha creado correctamente:

### En el Portal
- Navega a "Redes virtuales"
- Busca el nombre de tu red virtual
- Revisa la información general y las subredes configuradas

### Con Azure CLI
```bash
# Lista todas las redes virtuales en el grupo de recursos
az network vnet list --resource-group miGrupoRecursos -o table

# Muestra los detalles de una red virtual específica
az network vnet show \
  --name mi-red-virtual \
  --resource-group miGrupoRecursos \
  --query '{Name:name, AddressSpace:addressSpace.addressPrefixes[0], Subnets:subnets[].name}' \
  -o table
```

## Conceptos Importantes

- **Red Virtual**: Un segmento de red aislado en la nube de Azure
- **Espacio de direcciones**: El rango de direcciones IP disponibles en tu red virtual (en formato CIDR)
- **Subred**: Una división de tu red virtual que ayuda a organizar y securizar recursos
- **Grupo de recursos**: Un contenedor lógico para recursos relacionados de Azure

## Recursos Adicionales

- [Documentación oficial de Redes Virtuales en Azure](https://learn.microsoft.com/es-es/azure/virtual-network/)
- [Referencia de comandos de Azure CLI para redes](https://learn.microsoft.com/es-es/cli/azure/network/vnet)
- [Mejores prácticas para redes virtuales](https://learn.microsoft.com/es-es/azure/virtual-network/virtual-network-vnet-plan-design-arm)
