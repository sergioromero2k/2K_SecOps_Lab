# Censys
Censys es una plataforma de ciberseguridad y análisis de Internet que se usa principalmente para descubrir, analizar y monitorizar dispositivos, servicios y dominios expuestos en Internet. Es muy utilizada en seguridad ofensiva (pentesting, red team) y defensiva (blue team, SOC).

## 1. ¿Qué es Censys en pocas palabras? ---
Censys es como un **Buscador de Internet técnico"

Mientras Google indexa páginas web, Censys indexa:
* Servidores
* Direcciones IP
* Puertos abiertos
* Certificados TLS/SSL
* Dominios
* Servicios expuestos (SSH, FTP, RDP, HTTP, etc.)
Sirve para saber qué hay expuesto en Internet y cómo está configurado.

## 2. ¿Cómo obtiene la información?
Censys hace escaneos masivos y continuos de Internet usando técnicas similares a:
* Port scanning
* Banner grabbing
* Análisis de certificados
* Fingerprinting de servicios

### Qué analiza exactamente:
* **IP** → qué puertos tiene abiertos
* **Puerto** → qué servicio corre ahí
* **Servicio** → versión, configuración, banner
* **Certificados** TLS → emisor, fechas, dominios asociados
* **Dominios** → a qué IP apuntan
Todo esto se guarda y se actualiza constantemente.

## 3. ¿Qué tipo de datos puedes ver?
### A. IPs
Para una IP puedes ver:
* Puertos abiertos (22, 80, 443, 3389…)
* Servicios detectados (Apache, Nginx, OpenSSH…)
* Versiones del software
* Sistema operativo estimado
* Historial de cambios
#### Ejemplo:
```
IP 192.0.2.1
Puerto 22 → OpenSSH 7.6
Puerto 443 → Nginx 1.18 + TLS válido
```
### B. Dominios
* A qué IPs resuelve
* Cambios históricos
* Certificados usados
* Subdominios relacionados

### C. Certificados TLS
Muy potente:
* Buscar todos los dominios que usan un certificado
* Encontrar infraestructuras ocultas
* Detectar certificados caducados o mal configurados

## 4. ¿Para qué se usa Censys?
### Defensa (Blue Team / SOC)
* Detectar servicios expuestos sin querer
* Identificar configuraciones inseguras
* Vigilar cambios sospechosos
* Controlar certificados caducados
Ejemplo:
```“¿Tenemos algún RDP expuesto a Internet?”```

### Ataque (Pentesting / Red Team)
Reconocimiento pasivo (sin tocar al objetivo)
Descubrir:
* Versiones vulnerables
* Paneles admin expuestos
* Dispositivos mal configurados
Ejemplo:
``Buscar servidores con Apache vulnerable a CVE-X``

### OSINT e investigación
* Mapear infraestructuras
* Atribución de campañas
* Investigación de malware y C2
* Análisis de actores de amenazas

## 5. ¿Cómo se usa Censys? (conceptos clave)
### Búsquedas avanzadas
* Censys usa filtros muy precisos, por ejemplo:
* Servicios específicos
* Versiones de software
* País
* ASN
* Organización
* Puertos abiertos

#### Ejemplos conceptuales
* “Servidores con SSH abierto en España”
* “Dominios con certificados caducados”
* “Servicios web con versión vulnerable”
(No pongo queries exactas por ética, pero esa es la lógica)

### 7. Diferencia con Shodan
| Censys                       | Shodan                           |
| ---------------------------- | -------------------------------- |
| Más académico y estructurado | Más visual y directo             |
| Fuerte en certificados TLS   | Fuerte en IoT                    |
| Muy preciso en búsquedas     | Más “rápido”                     |
| Ideal para investigación     | Ideal para descubrimiento rápido |
