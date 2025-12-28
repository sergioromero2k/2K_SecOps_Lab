# Consultas Censys para terminal (CLI)
censys search 'services.service_name: HTTP AND location.country: "Spain" AND services.port: 80'
censys search 'services.service_name: SSH AND operating_system.vendor: Linux'
censys search 'services.software.product: Apache AND location.continent: Europe'
censys search 'services.port: 3389 AND (autonomous_system.name: *University* OR dns.names: *.edu*)'
censys search 'services.service_name: HTTPS AND services.tls.certificates.leaf_data.validity.end < "2024-01-01"'
censys search 'services.software.uniform_resource_identifier: *log4j* AND location.continent: Europe'
