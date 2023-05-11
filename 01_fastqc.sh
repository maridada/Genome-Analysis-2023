#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user maria.dada-olorunwa.6832@student.uu.se

# Load modules
module load bioinfo-tools FastQC

#DNA_trimmed data
fastqc SRR4342129_1.paired.trimmed.fastq.gz SRR4342129_2.paired.trimmed.fastq.gz SRR4342133_1.paired.trimmed.fastq.gz SRR4342133_2.paired.trimmed.fastq.gz

#RNA_untrimmed data
fastqc SRR4342137.1.fastq.gz SRR4342137.2.fastq.gz SRR4342139.1.fastq.gz SRR4342139.2.fastq.gz

#RNA_trimmed data
fastqc SRR4342137.2.T-rev-P.fastq.gz SRR4342139.1.T-for-P.fastq.gz SRR4342139.2.T-rev-P.fastq.gz
