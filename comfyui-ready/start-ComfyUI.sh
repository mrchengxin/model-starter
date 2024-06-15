#!/bin/bash

# Install Python libraries when starting ComfyUI for the first time
if [ ! -f "/opt/ComfyUI/INSTALLED" ]; then
    echo -e "\033[0;32mWhen launching ComfyUI for the first time, install the necessary Python libraries...\033[0m"
    source /opt/ComfyUI/install-ComfyUI.sh
fi

# Start ComfyUI
cd /root/ComfyUI
python main.py
