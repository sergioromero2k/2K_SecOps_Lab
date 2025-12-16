## CENSYS – Chuleta de comandos (Ciberseguridad)

### Servicios y puertos

* `services.port: 80`
* `services.port: 443`
* `services.service_name: HTTP`
* `services.service_name: SSH`
* `services.service_name: RDP`

---

### Geolocalización

* `location.country: Spain`
* `location.country_code: ES`
* `location.city: Madrid`
* `location.continent: Europe`

---

### IP, red y ASN

* `ip: 8.8.8.8`
* `ip: 192.168.1.0/24`
* `autonomous_system.asn: 15169`
* `autonomous_system.name: Google`

---

### Software y sistema operativo

* `services.software.product: Apache`
* `services.software.product: OpenSSH`
* `services.software.product: Elasticsearch`
* `services.software.version: 2.4.49`
* `operating_system.vendor: Linux`
* `operating_system.vendor: Microsoft`

---

### TLS / Certificados (punto fuerte de Censys)

* `services.tls.certificates.leaf.subject.common_name: example.com`
* `services.tls.certificates.leaf.issuer.common_name: Let's Encrypt`
* `services.tls.certificates.leaf.expired: true`
* `services.tls.certificates.leaf.validity.start: [2024-01-01 TO *]`

---

### Organización y dominios

* `organization: Telefonica`
* `dns.names: example.com`
* `dns.reverse_dns: *.gov.es`

---

### Vulnerabilidades

* `vulnerabilities.cve_id: CVE-2021-44228`
* `vulnerabilities.cve_id: CVE-2022-22965`

---

### HTTP y banners

* `services.http.response.headers.server: nginx`
* `services.http.response.body: "login"`
* `services.http.response.status_code: 200`
* `services.banner: "Unauthorized"`

---

### Operadores lógicos

* `AND` → ambas condiciones
* `OR` → cualquiera
* `NOT` → excluir

Ejemplo:

```
services.port: 22 AND location.country: Spain
```

---
