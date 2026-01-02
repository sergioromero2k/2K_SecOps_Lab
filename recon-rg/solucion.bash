recon -ng

# Reto 1
workspaces create practica_segura
db insert domains
domain(string): tesla.com
notes(string): ....
show domains # o puedes poner db query SELECT * FROM domains


# Reto 2 - Te pedira API
marketplace search hosts
marketplace install recon/domains-hosts/bing_domain_web
marketplace install recon/domains-hosts/google_site_web
modules search hosts

# Reto 3 - Te pedira API
marketplace install recon/domains-hosts/certificate_transparency
modules load recon/domains-hosts/certificate_transparency
options set SOURCE nasa.gov
run
show hosts

# Reto 4 - Necesitas el paso anterior, API
shows hosts
db edlete hosts 1 # RowID
show hosts

# Reto 5
db insert domains
# Introduce: cia.gov (en la parte de 'domain')
# El resto de campos puedes dejarlos en blanco pulsando Enter

marketplace search pgp_search
marketplace install recon/domains-contacts/pgp_search
modules load recon/domains-contacts/pgp_search
run
show contacts

# Reto 6
db insert domains
# Escribe: mit.edu
# Pulsa Enter en los demás campos
modules load recon/domains-hosts/certificate_transparency
run
marketplace install recon/hosts-hosts/resolve
modules load recon/hosts-hosts/resolve
run
show hosts

# Reto 7
marketplace install reporting/html
modules load reporting/html
options set FILENAME /home/kali/auditoria_final.html
options set CUSTOMER Auditoria OSINT - Reporte Final
options set CREATOR TuNombre
run
ls -l /home/kali/auditoria_final.html