# Google Hacking (Google Dorking)
---
Google indexa enormes cantidades de información.
A veces, archivos, configuraciones o datos sensibles quedan expuestos accidentalmente.

```
comando:consulta
site:ejemplo.com
```

| Operador    | ¿Qué hace?                         | Ejemplo teórico       |
| ----------- | ---------------------------------- | --------------------- |
| `site:`     | Busca dentro de un dominio         | `site:midominio.com`  |
| `filetype:` | Busca tipos de archivo específicos | `filetype:pdf`        |
| `intitle:`  | Palabras en el título de la página | `intitle:"login"`     |
| `inurl:`    | Palabras en la URL                 | `inurl:admin`         |
| `cache:`    | Muestra versión en caché           | `cache:midominio.com` |
| `related:`  | Sitios similares                   | `related:ejemplo.com` |

## Mas comunes
site:https://www.pagina.com/ filetype:pdf

filetype:pdf
filetype:doc
filetype:docx
filetype:ppt
filetype:xls
filetype:xlsx

filetype:cfg
filetype:conf
filetype:ini
filetype:env
filetype:json

filetype:sql
filetype:db
filetype:bak
filetype:old
filetype:backup
filetype:zip
filetype:rar

filetype:jpg
filetype:png

#### Ejemplos
* filetype: sql "MySQL dump" (pass|password|passwd|pwd) -> Para encontrar backups de BD propios expuestos accidentalmente.
* inurl:index.php?id=
* site:gov filetype:pdf allintitle:restricted

| Dork proporcionado                                         | Tipo de auditoría que corresponde                          | Objetivo ético y defensivo                                                      |
|-------------------------------------------------------------|-------------------------------------------------------------|----------------------------------------------------------------------------------|
| site:pagina filetype:pdf           | Auditoría de exposición documental (Document Exposure Audit) | Revisar qué PDFs están públicos y si contienen información sensible.            |
| filetype:sql "MySQL dump" (pass|password|passwd|pwd)         | Auditoría de bases de datos / filtraciones (DB Leak Audit)  | Detectar si existen dumps SQL expuestos por error y prevenir compromisos.       |
| inurl:index.php?id=                                         | Auditoría de inyección SQL (SQLi Security Audit)            | Identificar parámetros GET vulnerables en tus propios sistemas.                 |
| site:gov filetype:pdf allintitle:restricted                 | Auditoría de documentos clasificados (Sensitive Document Exposure Audit) | Verificar si documentos internos/restringidos están indexados accidentalmente. |
