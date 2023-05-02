#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 15:00:00
#SBATCH -J metagenome_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user maria.dada-olorunwa.6832@student.uu.se

# Load modules
module load bioinfo-tools
module load megahit

#commands
megahit --kmin-1pass --k-list 59,79,99 -1 SRR4342129_1.paired.trimmed.fastq.gz -2 SRR4342129_2.paired.trimmed.fastq.gz -t 4 -o SRR4342129_megahit_out
megahit --kmin-1pass --k-list 59,79,99 -1 SRR4342133_1.paired.trimmed.fastq.gz -2 SRR4342133_2.paired.trimmed.fastq.gz -t 4 -o SRR4342133_megahit_out
