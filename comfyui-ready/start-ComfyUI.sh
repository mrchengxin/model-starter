#!/bin/bash

# Install Python libraries when starting ComfyUI for the first time
if [ ! -f "/opt/ComfyUI/INSTALLED" ]; then
    echo -e "\033[0;32mFirst time launching ComfyUI, install the necessary Python libraries now...\033[0m"
    source /opt/ComfyUI/install-ComfyUI.sh
fi

# Start ComfyUI
cd /root/ComfyUI
python main.py
