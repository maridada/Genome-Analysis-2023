#!/bin/bash
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J ht_seq133
#SBATCH --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH --mail-type=ALL

module load bioinfo-tools htseq

#mapping genome 129
in7=~/Genome-Analysis-2023/genome_analysis/RNA_data/02_mapBWA/RNA_map7/sorted_bam
ann_in=~/Genome-Analysis-2023/genome_analysis/RNA_data/03_htseq/129_gff
out=~/Genome-Analysis-2023/genome_analysis/RNA_data/03_htseq/129_out

for x in $in7/*.bam;
do
    bin_dir=$(basename "$x" .sorted.bam)
    
    htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${x} <(sed '/^##FASTA/Q' ${ann_in}/*.gff) > ${out}/${bin_dir}.txt
done

#mapping genome 133
in9=~/Genome-Analysis-2023/genome_analysis/RNA_data/02_mapBWA/RNA_map9/sorted_bam
ann_in=~/Genome-Analysis-2023/genome_analysis/RNA_data/03_htseq/133_gff
out=~/Genome-Analysis-2023/genome_analysis/RNA_data/03_htseq/133out/

for x in $in9/*.bam;
do
    bin_dir=$(basename "$x" _sorted.bam)
    
    htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${x} <(sed '/^##FASTA/Q' ${ann_in}/*.gff) > ${out}/${bin_dir}.txt
done
