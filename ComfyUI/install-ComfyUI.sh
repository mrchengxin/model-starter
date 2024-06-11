#!/bin/bash

# create the Python environment for ComfyUI
source /root/miniconda3/etc/profile.d/conda.sh
conda create -n comfyui python=3.10.11 -y
conda activate comfyui

# install necessary libraries
pip install opencv-python-headless
pip install xformers --no-deps
