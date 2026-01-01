# Chuleta de recon-rg
---

### Flujo de trabajo rápido (Resumen)

* **Crear workspace:** ``workspaces create cliente1``
* **Añadir objetivo:** ``db insert domains`` (te pedirá el dominio).
* **Instalar/Cargar módulo:** ``marketplace install``... -> ``modules load``...
* **Configurar:** ``options set SOURCE default`` (si ya lo metiste en la DB).
* **Ejecutar:** ``run``
* **Ver:** ``show hosts``

* 1. MARKETPLACE (Instalación de módulos)
Desde la versión 5, los módulos no vienen preinstalados. Tienes que buscarlos e instalarlos tú mismo.
```bash
marketplace search             # Listar todos los módulos disponibles
marketplace search <keyword>   # Buscar módulos específicos (ej: hackertarget)
marketplace install <módulo>   # Instalar un módulo (ej: marketplace install google_site_web)
marketplace update all         # Actualizar todos los módulos instalados
```

* 2. GESTIÓN DE API KEYS
Muchos módulos (como Shodan, Censys o Hunter.io) requieren una llave.
```bash
keys list                      # Ver qué llaves tienes configuradas
keys add <nombre> <valor>      # Añadir una llave (ej: keys add shodan_api 12345)
keys remove <nombre>           # Eliminar una llave
```

* 3. BASE DE DATOS (Añadir objetivos/seeds)
Antes de ejecutar módulos, debes decirle a Recon-ng qué quieres investigar (el "seed").
```bash
db insert domains              # Añadir un dominio (ej: example.com)
db insert companies            # Añadir una empresa
db schema                      # Ver la estructura de las tablas de la DB
show hosts                     # Ver los hosts descubiertos
show contacts                  # Ver los contactos/emails recolectados
```

* 4. CONFIGURACIÓN Y EJECUCIÓN (Dentro de un módulo)
Una vez que has hecho ``modules load <nombre>``, usas estos comandos:
```bash
options list                   # Ver variables configurables del módulo
options set <VARIABLE> <valor> # Configurar una variable (ej: options set SOURCE example.com)
run                            # Ejecutar el módulo
```

* 5. REPORTING (Exportar resultados)
Para sacar la información de Recon-ng a un archivo:
```bash
modules load reporting/html    # Cargar módulo de reporte HTML
options set FILENAME /tmp/res  # Definir ruta del archivo
options set CREATOR TuNombre   # Definir autor
run                            # Generar el reporte
```