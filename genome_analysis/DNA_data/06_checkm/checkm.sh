#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J check_M
#SBATCH  --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH  --mail-type=ALL


module load bioinfo-tools CheckM/1.0.12

checkm lineage_wf --reduced_tree -t 4 -x fa /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins129 /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/06_checkm/129checkm

checkm lineage_wf --reduced_tree -t 4 -x fa /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins133 /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/06_checkm/133checkm