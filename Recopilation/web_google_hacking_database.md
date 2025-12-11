## Google hacking database
---
La **Google Hacking Database (GHDB)** es un repositorio público que recopila dorks o consultas avanzadas de Google diseñadas para encontrar información expuesta accidentalmente en Internet.
La mantiene Offensive Security y se usa principalmente en ciberseguridad defensiva, auditorías y pruebas de seguridad (pentesting ético).

La **GHDB** es una base de datos que contiene búsquedas especiales de Google (llamadas **Google dorks**) que sirven para descubrir:
* Archivos expuestos sin querer
* Paneles de administración accesibles públicamente
* Errores de configuración de servidores
* Información sensible indexada por Google
* Versiones vulnerables de software, detectables por su huella en la web
Estas búsquedas se basan en operadores avanzados como ``filetype:``, ``intitle:``, ``inurl:``, etc.
**Importante**: No contiene exploits, solo consultas de Google para detectar contenido que Google ya indexó.

### ¿Para qué la usarías? (De forma legal y ética)
#### 1. Auditorías de seguridad
Permite a un profesional revisar qué información de su propia organización está expuesta en Google.
Ejemplos (generales y NO dañinos):
* Encontrar documentos PDF públicos que la empresa no debería tener online.
* Detectar páginas que revelan versiones de software.
* Localizar directorios o backups visibles accidentalmente.

#### 2. Evaluación de exposición pública
Te ayuda a responder:
```“¿Qué puede ver un atacante de mi empresa solo con Google?”```

#### 3. Mejora del hardening
Si una búsqueda revela configuraciones inseguras, puedes corregirlas antes de que lo haga un atacante.

#### 4. Procesos de Bug Bounty
Muchos cazadores de bugs usan la GHDB para identificar fallas de exposición de datos.

### ¿En qué te simplifica la vida en ciberseguridad?

* Automatiza lo que de otro modo sería una búsqueda manual muy extensa.
* Te permite descubrir fugas de información rápidamente.
* Ahorra tiempo en auditorías, pentesting y OSINT.
* Te muestra ejemplos de cómo Google indexa accidentalmente recursos sensibles.
* Ayuda a educar a equipos sobre lo que deben evitar exponer.