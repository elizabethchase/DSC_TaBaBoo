#!/bin/bash
#SBATCH --job-name=submit_dsc
#SBATCH --time=48:00:00
#SBATCH --mail-user=ecchase@umich.edu
#SBATCH --mail-type=ALL
#SBATCH --mem=4g
#SBATCH --cpus-per-task=1
#SBATCH --output=/home/ecchase/slurm_output/slurm-%j.out

source /home/ecchase/.bashrc
conda activate dsc
module load Rtidyverse/4.1.0
dsc gaussian_basic.dsc --replicate 100 --host greatlakes.yaml
