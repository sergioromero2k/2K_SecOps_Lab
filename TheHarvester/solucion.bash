# 1
theHarvester -d linkedin.com -b bing 
python theHarvester.py -d linkedin.com -b google 

# 2
theHarvester -d microsoft.com -b google,bing,duckduckgo -l 42
theHarvester -d microsoft.com -b google,bing,duckduckgo -l 242
python theHarvester.py -d youtube.com -b google -l 42 
python theHarvester.py -d youtube.com -b google  -l 242

# 3
theHarvester -d microsoft.com -b brave,yahoo,duckduckgo -l 100
python theHarvester.py -d microsoft.com -b google,bing,yahoo -l 100

# 4
# Versiones nuevas ya no dejan esto de dns.
python theHarvester -d empresa.com -b dns
# www.empresa.com → Producción
# dev.empresa.com → Desarrollo
# test.empresa.com → Pruebas

# 5
theHarvester -d google.com -b bing -f result
cat result.json
# Segun la salida, para mi seria hosts y el resultado de shodan.

# 6
theHarvester -d empresa.com -b google
theHarvester -d empresa.com -b crtsh

# 7
# Fuentes: google, bing, crtsh
# Usar primero: subdominios activos y correos
# Descartar: hosts antiguos o duplicados
# Siguiente paso: mapear superficie (sin explotar)

