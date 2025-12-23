#!/bin/bash
#SBATCH -p hpc-bio-nikola-cpu
#SBATCH --chdir=/home/alumno19/lab-python
#SBATCH -J python
#SBATCH --cpus-per-task=1
#SBATCH --output=salida_python_%j.txt

echo "Ejecucion con n=$1"
module load anaconda/2025.06

ipython reduc-operation-alumno19.ipynb $1

module unload anaconda/2025.06
