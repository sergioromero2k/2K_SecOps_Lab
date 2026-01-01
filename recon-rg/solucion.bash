recon -ng

# Reto 1
workspaces create practica_segura
db insert domains
domain(string): tesla.com
notes(string): ....
show domains # o puedes poner db query SELECT * FROM domains


# Reto 2
marketplace search hosts
marketplace install recon/domains-hosts/bing_domain_web
marketplace install recon/domains-hosts/google_site_web
modules search hosts
