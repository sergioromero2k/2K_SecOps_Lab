## Ejercicios prácticos de Shodan (sin solución)

### Reglas del ejercicio

* Usa **mínimo 2 filtros** por búsqueda
* No reutilices exactamente la misma estructura en todos
* Prioriza precisión sobre cantidad
* Anota qué filtros te parecen más útiles


### 🟢 1. Nivel fácil

Encuentra **servidores web Apache** expuestos en **España** usando el **puerto 80**.
* apache port:80 country:ES

---

### 🟢 2. Nivel fácil

Busca **servicios SSH** abiertos en **cualquier país**, pero **solo en sistemas Linux**.
* port_22 os:Linux
---

### 🟡 3. Nivel medio-bajo

Localiza **bases de datos MySQL** accesibles desde Internet en **Latinoamérica**.
* product:MySQL port:3306 country:MX,AR,CO,CL,PE
---

### 🟡 4. Nivel medio

Encuentra **servidores RDP (puerto 3389)** expuestos que pertenezcan a **organizaciones educativas**.
* port:3389 org:university
---

### 🟠 5. Nivel medio

Busca **instancias de Elasticsearch** accesibles públicamente que **NO usen SSL**.
* product:Elasticsearch port:9200 ssl:false
---

### 🟠 6. Nivel medio-intermedio

Identifica **hosts vulnerables a una CVE concreta** (elige una CVE conocida) que estén ubicados en **Europa** y expongan un **servicio web**.
* vuln:CVE-2021-44228 port:80 country:DE,FR,ES,IT
---

