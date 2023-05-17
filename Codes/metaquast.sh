#!/bin/bash -l
#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J metaquast
#SBATCH --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH --mail-type=ALL

module load bioinfo-tools
module load quast
module load python

metaquast.py -t 4 /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/03_megahit/SRR4342129_megahit_out/final.contigs.fa -o /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/07_metaquast/129_mq
metaquast.py -t 4 /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/03_megahit/SRR4342133_megahit_out/final.contigs.fa -o /home/mariada//Genome-Analysis-2023/genome_analysis/DNA_data/07_metaquast/133_mq
