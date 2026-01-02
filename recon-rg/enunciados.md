## Nivel Fácil (Conceptos básicos y entorno)
**Reto 1** 
* El Arquitecto Crea un entorno de trabajo aislado llamado practica_segura. 
* Una vez dentro, añade el dominio tesla.com a la base de datos de forma manual. 
* Verifica que el dominio se ha guardado correctamente en la tabla correspondiente.

**Reto 2** 
* El Instalador Busca en el marketplace todos los módulos que tengan que ver con "hosts". 
* Instala únicamente el módulo recon/domains-hosts/bing_domain_web y recon/domains-hosts/google_site_web. 
* Verifica que ahora aparecen en tu lista de módulos instalados.

**Reto 3** 
* Primeros pasos OSINT Utiliza el módulo recon/domains-hosts/certificate_transparency (que busca certificados SSL) para encontrar subdominios de nasa.gov. 
* Al terminar, muestra por pantalla la tabla de hosts para ver cuántos resultados has obtenido.

## Nivel Medio (Gestión de datos)

**Reto 4** 
* Limpieza de Base de Datos Tras el escaneo anterior, te darás cuenta de que hay IPs o nombres que no te interesan. 
* Aprende a usar el comando db delete para borrar una fila específica de la tabla de hosts (por ejemplo, borra el primer host que aparezca en la lista).

**Reto 5** 
* El Investigador de Personas Carga el dominio cia.gov en tu workspace. 
* Busca e instala un módulo que consulte servidores PGP o Whois para encontrar correos electrónicos asociados a ese dominio. 
* Ejecútalo y comprueba si la tabla contacts ha recolectado información.


## Nivel Intermedio (Flujo de trabajo y reporting)

**Reto 6 Encadenamiento de Módulos (Chaining)** 
Este es el flujo real de un profesional
* Añade el dominio mit.edu.
* Usa un módulo para encontrar hosts (subdominios).
* Busca un módulo de la categoría hosts-hosts que tome esos nombres encontrados y resuelva sus direcciones IP.
* Muestra la tabla de hosts para ver si ahora tienes la columna de "IP" rellena.

**Reto 7** 
* El Informe Final Imagina que tienes que entregar los resultados a un cliente. 
* Instala el módulo de reporting para HTML. 
* Configura las opciones para que el reporte se guarde en tu carpeta /home/kali/ con el nombre auditoria_final.html, ponle un título personalizado y genéralo.