#!/bin/bash
#SBATCH --job-name=cardinal-hello
#SBATCH --partition=gpu
#SBATCH --qos=gpu
#SBATCH --gpus=1
#SBATCH --time=00:05:00
#SBATCH --mem=8G

# Harmless smoke test for the cardinal.farm FarmShare approval flow.
echo "host: $(hostname)"
echo "job: ${SLURM_JOB_ID:-none}  gpus: ${CUDA_VISIBLE_DEVICES:-none}"
nvidia-smi
python3 check_gpu.py
sleep 60
echo "done"
# changed after review
