# ExifTool
---
**ExifTool** es una herramienta que sirve para leer, escribir y eliminar metadatos de archivos.

* Los **metadatos** son datos ocultos dentro de un archivo que describen información sobre él. ExifTool funciona con imágenes, documentos, audio, video y más.
* Los metadatos pueden filtrar información sensible como: Nombres reales de empleados, Correos internos, Nombres de equipos, Rutas del sistema (C:\Users\Juan\Documents\...), Ubicaciones GPS, Software interno (Office, versiones, etc.)
* Metagoofil usa internamente herramientas como ExifTool para analizar esos archivos.

```bash
sudo apt update
sudo apt install exiftool
```
#### Ejemplo
```bash
exiftool archivo.pdf # Leer metadatos
```
Devuelve información como:
```
Author          : Carlos Perez
Creator Tool   : Microsoft Word 2019
Company        : ACME Corp
Create Date    : 2023:05:10 14:22:00
```

### Comandos
```bash
# Ver metadatos básicos de un archivo
exiftool archivo.jpg  # Muestra los metadatos básicos del archivo

# Ver metadatos de varios archivos
exiftool *.jpg  # Muestra los metadatos de todos los archivos JPG en el directorio

# Ver metadatos específicos (por etiqueta)
exiftool -Author -Creator -Company archivo.pdf  # Muestra etiquetas específicas del PDF

# Mostrar TODOS los metadatos (modo detallado)
exiftool -a -u -g1 archivo.docx  # Muestra todos los metadatos de forma detallada
# -a → muestra duplicados
# -u → muestra etiquetas desconocidas
# -g1 → agrupa por categoría

# Eliminar TODOS los metadatos (muy usado en defensa)
exiftool -all= archivo.jpg  # Elimina todos los metadatos del archivo
# Crea una copia con _original por defecto

# Eliminar metadatos sin guardar copia
exiftool -all= -overwrite_original archivo.pdf  # Elimina metadatos sin crear copia
# No reversible

# Modificar un metadato
exiftool -Author="Anonimo" archivo.docx  # Cambia el autor del documento

# Cambiar múltiples campos
exiftool -Author="Anonimo" -Company="EmpresaX" archivo.pdf  # Cambia varios metadatos

# Ver coordenadas GPS (imágenes)
exiftool -gps:all archivo.jpg  # Muestra todas las coordenadas GPS del archivo

# Ver GPS en formato legible
exiftool -n -gpslatitude -gpslongitude archivo.jpg  # Muestra coordenadas GPS en formato legible

# Convertir coordenadas GPS a mapa
exiftool -p '$gpslatitude, $gpslongitude' archivo.jpg  # Muestra coordenadas GPS

# Analizar todos los archivos de un directorio
exiftool carpeta/  # Muestra metadatos de todos los archivos en la carpeta

# Análisis recursivo (subcarpetas)
exiftool -r carpeta/  # Analiza archivos en subcarpetas

# Buscar archivos con un autor específico
exiftool -r -Author="Juan Perez" carpeta/  # Busca archivos por autor

# Buscar información sensible (OSINT)
exiftool -r -Author -Creator -Company -Email carpeta/  # Busca información sensible

# Ver software usado para crear archivos
exiftool -CreatorTool archivo.pdf  # Muestra la herramienta utilizada para crear el archivo

# Ver versión de ExifTool
exiftool -ver  # Muestra la versión de ExifTool

# Exportar metadatos a TXT
exiftool archivo.pdf > metadatos.txt  # Exporta metadatos a un archivo TXT

# Exportar metadatos a CSV
exiftool -csv *.pdf > metadatos.csv  # Exporta metadatos a un archivo CSV

# Exportar metadatos a JSON
exiftool -json archivo.jpg > metadatos.json  # Exporta metadatos a un archivo JSON

# Ver solo etiquetas comunes (salida limpia)
exiftool -common archivo.jpg  # Muestra solo etiquetas comunes

# Uso defensivo: limpiar todos los PDFs de una carpeta
exiftool -r -all= -overwrite_original *.pdf  # Limpia metadatos de todos los PDFs en la carpeta

# BONUS – Usado con Metagoofil
exiftool *.docx *.pdf  # Usado para analizar documentos en Metagoofil
```