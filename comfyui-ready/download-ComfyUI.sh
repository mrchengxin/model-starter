#!/bin/bash

INSTALL_DIR="/root"

# clone ComfyUI
cd ${INSTALL_DIR} || { echo "Failed to open ${INSTALL_DIR} directory"; exit 1; }
git clone https://github.com/comfyanonymous/ComfyUI.git

# popular ComfyUI custom nodes to be installed
custom_nodes_repositories=(
"https://github.com/ltdrdata/ComfyUI-Manager.git"
"https://github.com/11cafe/comfyui-workspace-manager.git"
"https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git"
"https://github.com/rgthree/rgthree-comfy.git"
"https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git"
"https://github.com/ltdrdata/ComfyUI-Inspire-Pack.git"
"https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git"
"https://github.com/cubiq/ComfyUI_IPAdapter_plus.git"
"https://github.com/kijai/ComfyUI-Marigold.git"
"https://github.com/BlenderNeko/ComfyUI_TiledKSampler.git"
"https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git"
"https://github.com/Stability-AI/stability-ComfyUI-nodes.git"
"https://github.com/jags111/efficiency-nodes-comfyui.git"
"https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet.git"
"https://github.com/crystian/ComfyUI-Crystools.git"
"https://github.com/LEv145/images-grid-comfy-plugin.git"
"https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet.git"
"https://github.com/Fannovel16/comfyui_controlnet_aux.git"
"https://github.com/kohya-ss/ControlNet-LLLite-ComfyUI.git"
"https://github.com/comfyanonymous/ComfyUI_experiments.git"
"https://github.com/FizzleDorf/ComfyUI_FizzNodes.git"
"https://github.com/WASasquatch/PowerNoiseSuite.git"
"https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git"
)

# clone above custom nodes
for repo in "${custom_nodes_repositories[@]}"; do
  # clone the repository
  cd ${INSTALL_DIR}/ComfyUI/custom_nodes || { echo "Failed to open custom_nodes directory"; exit 1; }
  git clone --depth 1 "$repo"
done

# create necessary directory for comfyui-workspace-manager
mkdir -p ${INSTALL_DIR}/ComfyUI/my_workflows

# clone ComfyUI_UltimateSDUpscale
cd ${INSTALL_DIR}/ComfyUI/custom_nodes || { echo "Failed to open custom_nodes directory"; exit 1; }
git clone --depth 1 https://github.com/ssitu/ComfyUI_UltimateSDUpscale --recursive

# clone ComfyUI-Impact-Pack
cd ${INSTALL_DIR}/ComfyUI/custom_nodes || { echo "Failed to open custom_nodes directory"; exit 1; }
git clone --depth 1 https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
cd ${INSTALL_DIR}/ComfyUI/custom_nodes/ComfyUI-Impact-Pack || { echo "Failed to open ComfyUI-Impact-Pack directory"; exit 1; }
git clone --depth 1 https://github.com/ltdrdata/ComfyUI-Impact-Subpack impact_subpack
