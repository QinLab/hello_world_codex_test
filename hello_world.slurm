#!/bin/bash
#SBATCH --job-name=hello-world
#SBATCH --partition=gpu-A10G          # Use a valid partition for your cluster
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --output=hello_world.%j.out

echo "Node: $(hostname)"
echo "Job ID: $SLURM_JOB_ID"
echo "Starting hello world job at: $(date)"

# Go to the project directory
cd /workspace/hello_world_codex_test

# Use the default Python on the node
echo "Python in use: $(which python3)"
python3 --version

# Run the script
python3 hello_world.py

echo "Finished at: $(date)"
