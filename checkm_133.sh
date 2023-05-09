#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J check_M
#SBATCH  --mail-user maria.dada-olorunwa.6832@student.uu.se
#SBATCH  --mail-type=ALL


module load bioinfo-tools CheckM

#running checkM
#checkm lineage_wf -t 4 -x fa --reduced_tree in=~/genome_analysis/DNA_trim/05_binning/bins_dir/ out=~/genome_analysis/DNA_trim/05_binning/bins_dir/bins_129_out

#generating bin QA plot
#checkm qa --reduced_tree -t 4 -o 2 --rc --pplacer_threads 4 --tab_table $in_dir/ $out_dir/checkm_qa_output


checkm lineage_wf --reduced_tree -t 4 -x fa /home/mariada/genome_analysis/DNA_trim/05_binning/bins_133 /home/mariada/genome_analysis/DNA_trim/06_checkm/checkm_133
