#!/bin/bash

INSTALL_DIR="${WORKSPACE_DIR:-/root}"

# create the Python environment for ComfyUI
source /root/miniconda3/etc/profile.d/conda.sh
conda create -n comfyui python==3.11.9 -y
conda activate comfyui

# install necessary libraries
pip install --no-cache-dir torch torchvision
# # to fix the no libGL.so.1 issue
pip install --no-cache-dir opencv-python-headless==4.8.1.78
pip install --no-cache-dir xformers --no-deps

# clone ComfyUI
cd ${INSTALL_DIR} || { echo "Failed to open ${INSTALL_DIR} directory"; exit 1; }
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ${INSTALL_DIR}/ComfyUI || { echo "Failed to open ComfyUI directory"; exit 1; }
pip install --no-cache-dir -r requirements.txt
