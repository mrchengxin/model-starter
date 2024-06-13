#!/bin/bash

# create the Python environment for ComfyUI
source /root/miniconda3/etc/profile.d/conda.sh
conda install pytorch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 cpuonly -c pytorch
conda create -n comfyui python==3.10.11 -y
conda activate comfyui

# install necessary libraries
# to fix the no libGL.so.1 issue
pip install opencv-python-headless==4.8.1.78
pip install xformers --no-deps

# clone ComfyUI
cd /root || { echo "Failed to open root directory"; exit 1; }
git clone https://github.com/comfyanonymous/ComfyUI.git
cd /root/ComfyUI || { echo "Failed to open ComfyUI directory"; exit 1; }
pip install -r requirements.txt
