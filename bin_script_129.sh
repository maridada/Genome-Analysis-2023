#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J binning
#SBATCH  --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH  --mail-type=ALL


module load bioinfo-tools MetaBat/2.12.1

#assigning variables
in_dir_1=$HOME/genome_analysis/DNA_trim/03_megahit/SRR4342129_megahit_out/final.contigs.fa
in_dir_2=$HOME/genome_analysis/DNA_trim/03_megahit/SRR4342133_megahit_out/final.contigs.fa
in_bam_1=$HOME/genome_analysis/DNA_trim/04_DNA_depth/SRR4342129.bam
in_bam_2=$HOME/genome_analysis/DNA_trim/04_DNA_depth/SRR4342133.bam
bins_dir=$HOME/genome_analysis/DNA_trim/05_binning/bins_dir/bins_dir_129

#run the binning with metabat
metabat2 -i $in_dir_1 -o bins_dir/bins -bam $in_bam_1



