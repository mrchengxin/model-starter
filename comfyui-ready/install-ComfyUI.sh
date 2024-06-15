#!/bin/bash

INSTALL_DIR="/root"

# install necessary libraries
conda run --no-capture-output -n comfyui pip install torch torchvision
conda run --no-capture-output -n comfyui pip install xformers --no-deps

# install ComfyUI
cd ${INSTALL_DIR}/ComfyUI || { echo "Failed to open ComfyUI directory"; exit 1; }
conda run --no-capture-output -n comfyui pip install -r requirements.txt

# install each custom_node
CUSTOM_NODES="${INSTALL_DIR}/ComfyUI/custom_nodes"
for NODE_DIR in "${CUSTOM_NODES}"/*; do
  if [ -d "${NODE_DIR}" ]; then
    cd "${NODE_DIR}" || { echo "Failed to open ${NODE_DIR} directory"; exit 1; }
    if [ -f "requirements.txt" ]; then
      conda run --no-capture-output -n comfyui pip install -r requirements.txt
    fi
  fi
done

# install ComfyUI-Impact-Pack
cd ${INSTALL_DIR}/ComfyUI/custom_nodes/ComfyUI-Impact-Pack || { echo "Failed to open ComfyUI-Impact-Pack directory"; exit 1; }
conda run --no-capture-output -n comfyui python install.py

# mark the installation as completed
touch /opt/ComfyUI/INSTALLED
