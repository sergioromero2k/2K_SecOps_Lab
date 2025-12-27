## Ejercicios prácticos de Shodan 

### Reglas del ejercicio

* Usa **mínimo 2 filtros** por búsqueda
* No reutilices exactamente la misma estructura en todos
* Prioriza precisión sobre cantidad
* Anota qué filtros te parecen más útiles

### 1. Nivel fácil
1. Encuentra **servidores web Apache** expuestos en **España** usando el **puerto 80**.         
2. Busca **servicios SSH** abiertos en **cualquier país**, pero **solo en sistemas Linux**.     -

### 3. Nivel medio 
3. Localiza **bases de datos MySQL** accesibles desde Internet en **Latinoamérica**.           
4. Encuentra **servidores RDP (puerto 3389)** expuestos que pertenezcan a **organizaciones educativas**. 
5. Busca **instancias de Elasticsearch** accesibles públicamente que **NO usen SSL**.                      
6. Identifica **hosts vulnerables a una CVE concreta** (elige una CVE conocida) que estén ubicados en **Europa** y expongan un **servicio web**. 


#### Soluciones
---
1. product:Apache country:ES port:80
2. product:OpenSSH os:Linux
3. product:MySQL (country:MX OR country:AR OR country:CO OR country:CL)
4. port:3389 org:".edu" 
5. product:Elasticsearch -has_ssl:true
6. vuln:CVE-2021-44228 (country:ES OR country:FR OR country:UK)
