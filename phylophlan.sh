#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J phylophlan
#SBATCH  --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH  --mail-type=ALL

# Loading modules
module load conda
source conda_init.sh
export CONDA_ENVS_PATH=~/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/envs
conda activate phylophlan

#Create variables
outdir=~/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan
configs=~/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/envs/configs
annotation=~/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/prokka129


#129
phylophlan -i /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/prokka129/ -d phylophlan --diversity high -f ~/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/envs/configs/supermatrix_aa.cfg

#133_genome
phylophlan -i /home/mariada/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/prokka133/ -d phylophlan --diversity high -f ~/Genome-Analysis-2023/genome_analysis/DNA_data/09_phylophlan/envs/configs/supermatrix_aa.cfg