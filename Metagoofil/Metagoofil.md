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
