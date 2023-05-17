#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J trimmomatic
#SBATCH  --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH  --mail-type=ALL

#loading modules
module load bioinfo-tools trimmomatic

#trimmomatic for RNA untrimmed data
trimmomatic PE SRR4342137.1.fastq.gz SRR4342137.2.fastq.gz SRR4342137.1.T-for-P.fastq.gz SRR4342137.1.T-for-UP.fastq.gz SRR4342137.2.T-rev-P.fastq.gz SRR4342137.2.T-rev-UP.fastq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.39/rackham/adapters/TruSeq3-PE.fa:2:30:10

trimmomatic PE SRR4342139.1.fastq.gz SRR4342139.2.fastq.gz SRR4342139.1.T-for-P.fastq.gz SRR4342139.1.T-for-UP.fastq.gz SRR4342139.2.T-rev-P.fastq.gz SRR4342139.2.T-rev-UP.fastq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.39/rackham/adapters/TruSeq3-PE.fa:2:30:10