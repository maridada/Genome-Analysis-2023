#!/bin/bash
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J BWA_mapping
#SBATCH --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH --mail-type=ALL


bins129=~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins129
bins133=~/Genome-Analysis-2023/genome_analysis/DNA_data/05_binning/bins133
rna=~/Genome-Analysis-2023/genome_analysis/RNA_data/RNA_trim
rna39=~/Genome-Analysis-2023/genome_analysis/RNA_data/RNA_qc_af
map_outdir7=~/Genome-Analysis-2023/genome_analysis/RNA_data/map_BWA/RNA_map7
map_outdir9=~/Genome-Analysis-2023/genome_analysis/RNA_data/map_BWA/RNA_map9


module load bioinfo-tools bwa samtools

for x in $bins129/*.fa;
do
    bin_name=$(basename "$x" .fa)
    bwa index $x
    bwa mem $x $rna/SRR4342137.1.T-for-P.fastq.gz $rna/SRR4342137.2.T-rev-P.fastq.gz | \
    samtools view -u -b - > $map_outdir7/$bin_name.bam
done

for x in $bins133/*.fa;
do
    bin_name=$(basename "$x" .fa)
    bwa index $x
    bwa mem $x $rna/SRR4342139.1.T-for-P.fastq.gz $rna/SRR4342139.2.T-rev-P.fastq.gz | \
    samtools view -u -b - > $map_outdir9/$bin_name.bam
done


