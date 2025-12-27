## Shodan 

Es el buscador más famoso y veterano en este campo. Su objetivo es encontrar dispositivos específicos conectados a la red. Escanea puertos comunes y lee los "banners" (la información de presentación que envía un servicio) para identificar qué sistema operativo o software está corriendo.

### Búsquedas básicas

* `apache` → Servidores Apache visibles
* `nginx` → Servidores Nginx
* `ssh` → Servicios SSH expuestos
* `ftp anonymous` → FTP con acceso anónimo
* `"login"` → Páginas con formularios de login

---

### Filtros por ubicación

* `country:ES` → Resultados en España
* `city:Madrid` → Ciudad específica
* `geo:40.4168,-3.7038` → Coordenadas GPS
* `region:Catalonia`

---

### Filtros por red

* `ip:8.8.8.8` → IP específica
* `net:8.8.8.0/24` → Rango de red
* `asn:AS15169` → Sistema Autónomo (Google)

---

### Puertos y servicios

* `port:22` → SSH
* `port:80,443` → HTTP/HTTPS
* `port:3389` → RDP expuesto
* `port:3306` → MySQL
* `port:9200` → Elasticsearch

---

### Sistema y software

* `os:Windows`
* `os:Linux`
* `product:OpenSSH`
* `product:Apache httpd`
* `version:2.4.49`

---

### Certificados y SSL

* `ssl:true` → Servicios con SSL
* `ssl.cert.subject.cn:"example.com"`
* `ssl.cert.issuer.cn:"Let's Encrypt"`
* `ssl.cert.expired:true`

---

### Organización y dominio

* `org:"Telefonica"`
* `hostname:gov.es`
* `domain:example.com`

---

###  Dispositivos y sistemas comunes

* `webcam` → Cámaras expuestas
* `product:"MongoDB"`
* `product:"Elasticsearch"`
* `product:"Docker"`
* `product:"Kubernetes"`

---

###  Vulnerabilidades y exposiciones

* `vuln:CVE-2021-44228` → Log4Shell
* `http.title:"phpMyAdmin"`
* `"default password"`
* `"unauthorized"`

---

###  Combinar filtros (MUY potente)

* `apache country:ES port:80`
* `product:MySQL port:3306 country:MX`
* `os:Linux org:"Universidad"`
* `port:22 net:192.168.1.0/24`

---

###  Shodan CLI (requiere API key)

* `shodan search apache`
* `shodan host 8.8.8.8`
* `shodan stats country apache`
* `shodan download resultados.json "port:22"`

---

###  Consejos rápidos

* Usa **comillas** para texto exacto
* Menos filtros = más ruido
* Combina **puerto + producto + país** para precisión
* Ideal para **OSINT, auditorías externas y threat hunting**
