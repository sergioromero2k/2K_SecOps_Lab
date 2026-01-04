# Desafíos Prácticos con FOCA
---

## Nivel Básico
### 1. El rastro del autor
Selecciona una organización pública (un ayuntamiento pequeño o una universidad). Utiliza ***FOCA*** para extraer metadatos de documentos .pdf y .docx.
* **Tu objetivo:** Identificar al menos 3 nombres de usuario reales y las versiones de software (ej. Microsoft Office 2016) utilizadas para crear los archivos. ¿Qué nos dice esto sobre el parque informático de la entidad?

### 2. El mapa de las impresoras
Busca documentos en el dominio de una empresa mediana que hayan sido escaneados o impresos.
* **Tu objetivo:** Localizar en los metadatos nombres de impresoras o rutas de red (UNC paths). Intenta determinar si las impresoras tienen nombres que revelen su ubicación física (ej. PISO4-PASILLO-HP).

## Nivel Intermedio
### 3. Fuga de infraestructura (Internal IPs)
Configura ***FOCA*** para buscar documentos específicos en un dominio corporativo.
* **Tu objetivo:** Encontrar dentro de los metadatos de archivos de Excel (.xlsx) o PowerPoint (.pptx) direcciones IP internas (típicamente de rango 10.x.x.x o 192.168.x.x). ¿Cómo podrías usar esta información en un ejercicio de pentesting posterior?

### 4. Análisis de rutas de red y carpetas
A veces, los documentos guardan la ruta local donde estaban almacenados antes de ser subidos a la web.
* **Tu objetivo:** Extraer rutas de carpetas (ej. C:\Users\j.garcia\Documents\Proyectos2023\Privado\). Analiza si estas rutas revelan la estructura de nombres de usuario de la empresa o proyectos confidenciales que no deberían ser públicos.

### 5. Relaciones de confianza y dominios
***FOCA*** no solo saca metadatos de archivos, también analiza DNS.
* **Tu objetivo:** Utiliza la función de búsqueda de subdominios y búsqueda inversa (PTR). Intenta encontrar servidores de "staging", "test" o "dev" que no aparezcan en la web principal. ¿Tienen estos servidores los mismos niveles de seguridad que el dominio principal?

## Nivel Avanzado
### 6. (Simulado): Deducción del Sistema Operativo
A partir de la información recolectada en los puntos anteriores (versiones de software, rutas de archivos, nombres de servidor).
* **Tu objetivo:** Crear un informe de "Perfil de Usuario". Basándote en los metadatos, deduce qué sistema operativo predomina en la organización (Windows 10, Windows 11, macOS) y si hay usuarios que utilizan software desactualizado que represente un riesgo.

### 7. El Reto del "Tesoro Escondido"
Busca un dominio que contenga archivos .log, .bak o .pcap indexados por Google o Bing y agrégalos a ***FOCA***.
* **Tu objetivo:** Analizar si ***FOCA*** es capaz de extraer información crítica de archivos que no son documentos ofimáticos estándar. Busca credenciales por defecto o mensajes de error del servidor que revelen tecnologías de base de datos.