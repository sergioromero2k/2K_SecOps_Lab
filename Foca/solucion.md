***FOCA*** usa Google Dorks para buscar archivos, pero Google bloquea las peticiones automáticas para evitar ataques. 
* Para que funcione el botón de "Search", necesitas configurar API Keys de Google o Bing en Options > Search Engines.
* Si no tienes las APIs, usaremos el Método Híbrido (Búsqueda manual + Análisis en FOCA)

### Problema 1 

1. Abre FOCA y crea el proyecto (como ya sabes hacer), coloca el ayuntamiento, EJM: ayuntamiento-ejemplo.es
2. En el panel izquierdo, haz clic derecho en Documen Analysis > Documents > Add file.
3. Selecciona todos los archivos descargados.
4. Haz clic derecho sobre ellos y elige Extract All Metadata.

### Problema 2 
***Foca*** deberia hacerte todo esto de los dorks, pero con eso del bloqueo, ya no se puede.

* site:empresa.com filetype:pdf "Canon" OR "HP" OR "LaserJet"
* site:empresa.com filetype:docx "Escaneado de"
* site:empresa.com filetype:pdf "impresora"

### Problema 3
Configura el proyecto con el dominio, busca .xlsx/.pptx en Bing, descarga y extrae metadatos para localizar en la sección "Internal IPs" rutas UNC y direcciones privadas que permiten mapear la red interna y lanzar ataques de SMB Relay sin ser detectado.