## Metagoofil
---
Es un programa escrito en Python diseñado para realizar OSINT (Open Source Intelligence o Inteligencia de Fuentes Abiertas). Su función principal es buscar y descargar documentos públicos (PDF, Word, Excel, PowerPoint) alojados en un sitio web o dominio específico para luego extraer sus metadatos.

### ¿Qué son los metadatos y por qué importan?
Los metadatos son "datos sobre los datos". Cuando alguien crea un documento, el software guarda información invisible a simple vista, como:
* Nombres de usuario de los empleados que crearon o editaron el archivo.
* Rutas de red (que revelan la estructura de los servidores internos).
* Versiones de software (ej. "Microsoft Word 2010", lo cual indica que el equipo podría ser vulnerable a ataques antiguos).
* Nombres de impresoras y direcciones de correo electrónico.

### Instalación
Metagoofil viene preinstalado en Kali Linux (la distribución estándar para ciberseguridad), pero también se puede instalar en cualquier sistema con Python.
```bash
sudo apt update
sudo apt install metagoofil
```
```bash 
metagoofil -d dominio.com -t pdf,doc,xls -l 100 -n 20 -o resultados -f reporte.html
```

| Opción | Descripción                           |
| ------ | ------------------------------------- |
| `-d`   | Dominio objetivo                      |
| `-t`   | Tipos de archivo                      |
| `-l`   | Límite de resultados de búsqueda      |
| `-n`   | Número máximo de archivos a descargar |
| `-o`   | Directorio de salida                  |
| `-f`   | Archivo de reporte HTML               |
| `-h`   | Ayuda                                 

### Comandos
```bash 
metagoofil -h  # Comprobar instalación
``` 
```bash 
metagoofil -d empresa.com -t pdf -o salida # Búsqueda básica
``` 
```bash 
metagoofil -d empresa.com -t pdf,doc,xls -l 200 -n 50 -o meta -f meta.html # Buscar múltiples tipos y generar reporte
``` 
```bash 
metagoofil -d universidad.edu -t doc,docx -o users  # Enumeración de usuarios internos
``` 
```bash 
metagoofil -d empresa.com -t pdf,ppt,pptx,xls -l 300 -n 100 -o osint -f informe.html # Auditoría OSINT corporativa
``` 