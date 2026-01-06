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

### Problema 4
- Ejemplo: ``C:\Users\j.garcia\Documents\Proyectos2023\Privado\``
#### Sistema operativo
C:\Users\ → Windows
#### Estructura de nombres de usuario
- **j.garcia** : Nombre + apellido
#### Útil para:
- Ataques de fuerza bruta
- Phishing dirigido
- Enumeración de usuarios en Active Directory
#### Estructura interna de carpetas
- **Proyectos2023** => **Indica**: Organización por años, Existencia de proyectos activos
- **Privado** => **Indica**: Información sensible, Falta de concienciación en seguridad, Posible filtración accidental

### Problema 5
- Ejemplo: ``empresa-ejemplo.com``
Usando la **funcionalidad de DNS** → Discover Subdomains, FOCA encuentra los siguientes subdominios:
```
www.empresa-ejemplo.com
mail.empresa-ejemplo.com
vpn.empresa-ejemplo.com
dev.empresa-ejemplo.com
test.empresa-ejemplo.com
staging.empresa-ejemplo.com
```
Los subdominios ``dev``, ``test`` y ``staging`` no aparecen enlazados en la web principal, lo que indica que son entornos internos o de pruebas.`

##### Búsqueda inversa (Reverse DNS / PTR)
**FOCA** realiza una búsqueda inversa sobre las IPs del dominio y obtiene:
```
192.168.20.15 → dev-web01.empresa-ejemplo.com
192.168.20.22 → test-api.empresa-ejemplo.com
192.168.20.30 → staging-db.empresa-ejemplo.com
```
Estos entornos no suelen tener el mismo nivel de seguridad que el dominio principal (``www.empresa-ejemplo.com``).

### Problema 6
