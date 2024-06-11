#!/bin/bash

# Load Conda
source /root/miniconda3/etc/profile.d/conda.sh

# Activate the environment
conda activate comfyui

# Execute the Docker CMD
exec "$@"
