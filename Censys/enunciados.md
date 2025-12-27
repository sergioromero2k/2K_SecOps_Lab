
##  Ejercicios prácticos de Censys 
###  Reglas del ejercicio

* Usa **mínimo 2 filtros**
* Practica el uso de **AND / OR**
* Ajusta países, CVEs o servicios si hay mucho ruido
* Anota qué campo te resulta más útil que en Shodan

### 1. Nivel fácil
1. Encuentra **servicios HTTP** expuestos en **España** usando el **puerto 80**.
2. Busca **servicios SSH** en sistemas que utilicen **Linux**, sin importar el país.

### 2. Nivel medio

3. Localiza **servidores Apache** accesibles desde Internet en **Europa**.
4. Encuentra **servicios RDP (3389)** pertenecientes a **organizaciones educativas**.
5. Busca **certificados TLS caducados** en servicios que usen **HTTPS**.
6. Identifica **hosts vulnerables a una CVE concreta** (elige una conocida) ubicados en **Europa** y con **servicios web activos**.

#### Soluciones
---
1. services.service_name: HTTP and location.country: "Spain" and services.port: 80
2. services.service_name: SSH and operating_system.vendor: Linux 
3. services.software.product: Apache and location.continent: Europe
4. services.port: 3389 and (autonomous_system.name: *University* or dns.names: *.edu*)
5. services.service_name: HTTPS and services.tls.certificates.leaf_data.validity.end < "2024-01-01"
6. services.software.uniform_resource_identifier: *log4j* and location.continent: Europe
