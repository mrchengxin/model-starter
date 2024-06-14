#!/bin/bash

INSTALL_DIR="${WORKSPACE_DIR:-/root}"

# create the Python environment for ComfyUI
conda create -n comfyui python==3.11.9 -y

# install necessary libraries
conda run --no-capture-output -n comfyui pip install --no-cache-dir torch torchvision
