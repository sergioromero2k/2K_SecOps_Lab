## Shodan 
---
**theHarvester** es una de las herramientas más clásicas y potentes para **la fase de Reconocimiento (OSINT) en ciberseguridad.** 

Si Shodan y Censys son "buscadores de máquinas", theHarvester es el "recolector de huellas digitales" de una organización. Es una herramienta escrita en Python diseñada para obtener información de fuentes públicas (Open Source Intelligence). Su objetivo no es atacar, sino ver qué es lo que "Internet sabe" sobre una empresa antes de que un atacante intente algo.

Lo que busca principalmente es:
* **Correos electrónicos:** Para ataques de phishing.
* **Subdominios:** Para encontrar servidores olvidados (ej: test.empresa.com).
* **Nombres de empleados:** Para ingeniería social.
* **Hosts e IPs:** Para mapear la infraestructura.
> No explota vulnerabilidades. Solo recopila información pública.

### ¿Se usa actualmente?
**Sí**, sigue utilizándose en:
- Pentesting
- Red Team
- Bug Bounty
- Auditorías de seguridad
- Fase inicial de reconocimiento
No es la más moderna, pero es **rápida, sencilla y efectiva**.

### ¿Para qué sirve?
Sirve para:
- Identificar la **superficie de ataque**
- Descubrir subdominios olvidados
- Obtener correos corporativos reales
- Preparar ataques posteriores (phishing, password spraying, análisis DNS)
Forma parte de la **fase 1: Reconocimiento**.

### ¿Cuándo usar TheHarvester?
Usar cuando:
- Comienzas un pentest
- No conoces la infraestructura del dominio
- Quieres información sin interactuar directamente con el servidor
- Antes de herramientas activas o intrusivas
No se usa para explotar sistemas.

#### Instalación
```bash
sudo apt install theharvester
```
### Comandos más usados
theHarvester -d empresa.com -b google               -- Búsqueda básica en Google
theHarvester -d empresa.com -b bing                 -- Usar Bing
theHarvester -d empresa.com -b google -l 200        -- Limitar número de resultados
theHarvester -d empresa.com -b dns                  -- Fuerza bruta DNS (subdominios)
theHarvester -d empresa.com -b google,bing,duckduckgo,yahoo -- Múltiples fuentes (recomendado)
theHarvester -d empresa.com -b google -f resultado  -- Guardar resultados en archivos
theHarvester -d empresa.com -b hunter               -- Uso de APIs (Hunter)
theHarvester -h                                     -- Ver todas las fuentes disponibles
