# Consultas Shodan para terminal (CLI)
shodan search 'product:Apache country:ES port:80'
shodan search 'product:OpenSSH os:Linux'
shodan search 'product:MySQL (country:MX OR country:AR OR country:CO OR country:CL)'
shodan search 'product:Elasticsearch -has_ssl:true'
shodan search 'vuln:CVE-2021-44228 (country:ES OR country:FR OR country:UK)'
