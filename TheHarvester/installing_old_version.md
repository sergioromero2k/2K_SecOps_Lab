## TheHarvester (versión antigua)
---
Guía para instalar y usar una versión antigua de theHarvester (3.2.2) usando Miniconda en Linux, ideal para pruebas con fuentes como Google, que ya no funcionan en versiones recientes.

### 1. Instalar Miniconda
* https://repo.anaconda.com/miniconda/ - Instalación de Miniconda en Linux (última versión)
* Miniconda es un gestor de entornos y paquetes, no un sistema operativo.

#### Ejecutar el instalador
```bash
cd ~/Downloads
bash Miniconda3-latest-Linux-x86_64.sh
```
Sigue el asistente y cierra la terminal al finalizar.

### 2. Activar conda (si no aparece (base))
Si al abrir la terminal no ves (base), añade Conda al PATH:
```zsh
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
source ~/miniconda3/bin/activate        # Activar manualmente ("Opcional")
```
* ``conda config --set auto_activate_base false`` - Desactivar la activación automática de (base) (opcional)

### 3. Crear entorno virtual para versión antigua de theHarvester
Algunas versiones antiguas funcionan mejor con Python 3.8.
```zsh
# Algunas versiones antiguas de theHarvester funcionan mejor con Python 3.8.
conda create -n old_harvester python=3.8 
source ~/miniconda3/etc/profile.d/conda.sh
conda activate old_harvester    # Activar el entorno
```
### 4. Crear directorio de trabajo
```bash
mkdir old_harvester
cd old_harvester
```
### 5. Descargar theHarvester 3.2.2
Esta versión aún soporta **Google** como fuente.
#### Descargar desde GitHub
```bash
wget https://github.com/laramies/theHarvester/archive/refs/tags/3.2.2.zip
unzip 3.2.2.zip
cd theHarvester-3.2.2
```
### 6. Instalar dependencias
```bash
pip install -r requirements/base.txt
```

### 7. Usar theHarvester
```bash
python theHarvester.py -h
```

### 8. Resumen
```bash
# Usar theHarvester por defecto (Kali)
theHarvester

# Usar la versión antigua (3.2.2)
cd old_harvester/theHarvester-3.2.2
conda activate old_harvester
python theHarvester.py
```
