#!/bin/bash
#
#SBATCH --job-name=dab-de
#SBATCH --output=dab_detr_visdrone.txt
#SBATCH --ntasks=1
#SBATCH --partition=students
#SBATCH --gres=gpu:1
#SBATCH --mem=16000
#SBATCH --nodelist=gpu08
#SBATCH --mail-user=anhtu@cl.uni-heidelberg.de
#SBATCH --mail-type=ALL

~/anaconda3/bin/conda activate dab-detr
srun ./scripts/run.sh