## The harvester old
---
* https://repo.anaconda.com/miniconda/ - Instalación de Miniconda en Linux (última versión)
Miniconda es un gestor de entornos y paquetes, no un sistema operativo.

#### Ejecutar el instalador
```bash
cd ~/Downloads
bash Miniconda3-latest-Linux-x86_64.sh
```
Cerra terminal.

#### Activar conda (si no aparece (base))
Significa que tienes activado el entorno "base" de Conda.
```zsh
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
source ~/miniconda3/bin/activate        # Activar manualmente
```
* ``conda config --set auto_activate_base false`` - Para que no salga siempre (base) al abrir la terminal

#### Crear entorno virtual para versión antigua de theHarvester
conda create -n old_harvester python=3.8 - Algunas versiones antiguas de theHarvester funcionan mejor con Python 3.8.
conda activate old_harvester

