# Desafíos Prácticos con Metagoofil
---

### Nivel: Principiante (Familiarización)
#### 1. Búsqueda básica de PDFs 
* Usa Metagoofil para buscar exclusivamente archivos PDF en un dominio educativo (ejemplo: una.edu.ni o cualquier universidad pública). Limita la búsqueda a solo los 10 primeros resultados de Google para no saturar.
* **Objetivo:** Aprender a usar los modificadores -d, -t y -l.

#### 2. El Inspector de Metadatos
* Descarga un archivo PDF cualquiera de internet de una institución oficial. Sin usar Metagoofil, intenta encontrar el nombre del autor y el software usado usando el visor de PDF de tu sistema (Click derecho -> Propiedades). Luego, intenta hacerlo con el comando exiftool.
* **Objetivo:** Entender qué información estás buscando antes de automatizarlo.

#### 3. Cambio de motor de búsqueda 
* Investiga cómo decirle a Metagoofil que busque archivos en un motor de búsqueda diferente a Google (si la versión que usas lo permite). Intenta realizar una búsqueda de archivos .docx en un dominio de una ONG.
* **Objetivo:** Aprender a diversificar las fuentes de información.

### Nivel: Intermedio (Análisis de Infraestructura)
#### 4. Caza de Usuarios y Rutas
* Ejecuta la herramienta contra un dominio gubernamental (ejemplo: .gob de tu país) buscando archivos ``.xlsx`` (Excel). Al terminar, revisa el reporte generado y busca si aparecen nombres de usuarios (como j.perez) o rutas de red (como ``C:\Users\Administrador\Documents...``).
* **Objetivo:** Identificar posibles vectores de ataque de fuerza bruta.

#### 5. El Limpiador (Defensa) 
* Crea un documento de Word tú mismo. En las propiedades del archivo pon tu nombre real, tu correo y una nota. Luego, busca una herramienta online o local para "limpiar metadatos". Pásale la herramienta y verifica con Metagoofil o Exiftool si la información desapareció.
* **Objetivo:** Aprender la contramedida necesaria para proteger a una empresa.

#### 6. Generación de Reporte 
* **Configura Metagoofil** para que guarde todos los archivos descargados en una carpeta específica y genere un archivo HTML con los resultados. Analiza ese HTML y cuenta cuántos correos electrónicos pudo recolectar automáticamente.
* **Objetivo:** Aprender a organizar la información para presentarla en un reporte de auditoría.

#### 7. Combinación de extensiones
* Realiza una búsqueda combinada. Intenta que la herramienta busque simultáneamente archivos de PowerPoint (.ppt) y Excel (.xls) en un solo comando. Observa cómo cambia la estructura de las carpetas de descarga.
* **Objetivo:** Optimizar el tiempo de recolección de información en una auditoría real.
