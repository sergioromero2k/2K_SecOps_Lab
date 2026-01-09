# Problema 1
metagoofil -d harvard.edu -t pdf -l 10  

# Problema 2
exiftool archivo_ejemplo.pdf

# Problema 3
# Las versiones actuales ya no permiten esto "OJO"
python2 metagoofil.py -d ong_ejemplo.org -t docx -l 10 -n 5 -b bing -o /home/kali/resultados -f informes.html

# Problema 4 
metagoofil -d xxx.gob.pe -t xlsx,xls -l 100 
# Tras ejecutar Metagoofil en un dominio autorizado y analizar los archivos .xlsx, 
# se identificaron metadatos que revelan nombres de usuarios como jperez y 
# rutas locales como C:\Users\Administrador\Documents. 
# Esta información podría ser utilizada por un atacante como base para ataques de fuerza bruta o enumeración 
# de usuarios en servicios expuestos, demostrando el riesgo de publicar documentos con metadatos sin sanitizar.

# Problema 5
exiftool -all= documento.docx # Con copia de la original
exiftool -all= -overwrite_original documento.docx # Sin copia
# Otra forma es entrar a internet y limpiarlos desde allí

# Problema 6
metagoofil -d dominio_pruebas.gob -t xls,xlsx -l 50 -n 10 -o resultados_metagoofil -f reporte.html

# Problema 7
metagoofil -d dominio_pruebas.gob -t ppt,xls -l 100 -n 20 -o combinada -f combinada.html

