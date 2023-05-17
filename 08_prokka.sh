#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J prokka
#SBATCH  --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH  --mail-type=ALL


module load bioinfo-tools prokka

prokka --outdir 129_01 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_dir/bins_1.fa
prokka --outdir 129_02 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_dir/bins_2.fa
prokka --outdir 129_03 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_dir/bins_3.fa
prokka --outdir 129_04 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_dir/bins_4.fa
prokka --outdir 129_05 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_dir/bins_5.fa
prokka --outdir 129_06 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_dir/bins_6.fa
prokka --outdir 129_07 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/bins_7.fa
prokka --outdir 129_08 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/bins_8.fa
prokka --outdir 129_09 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/bins_9.fa

rokka --outdir 133_01 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_01.fa
prokka --outdir 133_02 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_02.fa
prokka --outdir 133_03 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_03.fa
prokka --outdir 133_04 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_04.fa
prokka --outdir 133_05 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_05.fa
prokka --outdir 133_06 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_06.fa
prokka --outdir 133_07 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_07.fa
prokka --outdir 133_08 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_08.fa
prokka --outdir 133_09 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_09.fa
prokka --outdir 133_10 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_10.fa
prokka --outdir 133_11 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_11.fa
prokka --outdir 133_12 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_12.fa
prokka --outdir 133_13 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_13.fa
prokka --outdir 133_14 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_14.fa
prokka --outdir 133_15 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_15.fa
prokka --outdir 133_16 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_16.fa
prokka --outdir 133_18 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_18.fa
prokka --outdir 133_19 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_19.fa
prokka --outdir 133_20 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_20.fa
prokka --outdir 133_21 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_21.fa
prokka --outdir 133_22 ~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins_133/133_2.fa
