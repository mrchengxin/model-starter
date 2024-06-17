# model-starter

Use Docker to start a variety of AI models.

Source codes: [https://github.com/mrchengxin/model-starter](https://github.com/mrchengxin/model-starter)

## 🏠 Image 1: ai-model-workspace

[https://hub.docker.com/r/mrchengxin/ai-model-workspace](https://hub.docker.com/r/mrchengxin/ai-model-workspace)

[![Docker Image Size](https://img.shields.io/docker/image-size/mrchengxin/ai-model-workspace?logo=docker&logoColor=white)](https://hub.docker.com/r/mrchengxin/ai-model-workspace)&ensp;
[![Docker Pulls](https://img.shields.io/docker/pulls/mrchengxin/ai-model-workspace?logo=docker&logoColor=white)](https://hub.docker.com/r/mrchengxin/ai-model-workspace)&ensp;
[![Docker Image Version](https://img.shields.io/docker/v/mrchengxin/ai-model-workspace?logo=docker&logoColor=white)](https://hub.docker.com/r/mrchengxin/ai-model-workspace)&ensp;

This Docker image serves as an easy-to-use workspace for working with AI models.  
The goal is to prepare enough toolkits for you to start working with AI models with minimal effort.  
It comes pre-installed with a variety of very popular toolkits.

#### Base image

- [nvidia/cuda:base](https://hub.docker.com/r/nvidia/cuda/)
  - [Ubuntu 22.04](https://releases.ubuntu.com/jammy/)
  - [Nvidia CUDA](https://developer.nvidia.com/gpu-accelerated-libraries)

#### Users

- `root`: the root user

#### Pre-installed libraries and tools

1. [Zsh](https://www.zsh.org/)
   - [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
   - [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)
   - [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
   - [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
2. [Miniconda](https://docs.anaconda.com/free/miniconda/)
3. [p4gefau1t/trojan-go](https://github.com/p4gefau1t/trojan-go)
4. [fatedier/frp](https://github.com/fatedier/frp)

## 🏡 Image 2: comfyui-ready

[https://hub.docker.com/r/mrchengxin/comfyui-ready](https://hub.docker.com/r/mrchengxin/comfyui-ready)

[![Docker Image Size](https://img.shields.io/docker/image-size/mrchengxin/comfyui-ready?logo=docker&logoColor=white)](https://hub.docker.com/r/mrchengxin/comfyui-ready)&ensp;
[![Docker Pulls](https://img.shields.io/docker/pulls/mrchengxin/comfyui-ready?logo=docker&logoColor=white)](https://hub.docker.com/r/mrchengxin/comfyui-ready)&ensp;
[![Docker Image Version](https://img.shields.io/docker/v/mrchengxin/comfyui-ready?logo=docker&logoColor=white)](https://hub.docker.com/r/mrchengxin/comfyui-ready)&ensp;

This Docker image serves as a ready-to-use ComfyUI.  
The goal is to provide a production-grade ComfyUI that you can use to start generating AI art right away.  
It comes pre-installed with a variety of very popular custom nodes.

#### Base image

- [mrchengxin/ai-model-workspace](https://hub.docker.com/r/mrchengxin/ai-model-workspace)

#### Users

- `root`: the root user

### Pre-installed essential models

* vae
  * [sd15-vae-ft-mse-840000-ema-pruned.safetensors](https://huggingface.co/stabilityai/sd-vae-ft-mse-original/tree/main)
  * [xl-vae-fp16-fix.safetensors](https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/tree/main)
* upscale
  * [RealESRGAN_x4plus_anime_6B.pth](https://github.com/xinntao/Real-ESRGAN/blob/master/docs/model_zoo.md)
  * [RealESRGAN_x4plus.pth](https://github.com/xinntao/Real-ESRGAN/blob/master/docs/model_zoo.md)
* embeddings
  * [sd15-EasyNegative.safetensors](https://huggingface.co/datasets/gsdf/EasyNegative/tree/main)
  * [sd15-EasyNegativeV2.safetensors](https://huggingface.co/gsdf/Counterfeit-V3.0/tree/main/embedding)
  * [xl-negativeXL_Standard.safetensors](https://huggingface.co/gsdf/CounterfeitXL/tree/main/embeddings)
  * [xl-negativeXL_Realistic.safetensors](https://huggingface.co/gsdf/CounterfeitXL/tree/main/embeddings)
  * [xl-negativeXL_Anime.safetensors](https://huggingface.co/gsdf/CounterfeitXL/tree/main/embeddings)
* loras
  * [sd15-lora-lcm.safetensors](https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/tree/main)
  * [xl-lora-lcm.safetensors](https://huggingface.co/latent-consistency/lcm-lora-sdxl/tree/main)
* ultralytics
  * [bbox/face_yolov8m.pt](https://huggingface.co/Bingsu/adetailer/tree/main)
  * [bbox/hand_yolov8s.pt](https://huggingface.co/Bingsu/adetailer/tree/main)
  * [segm/person_yolov8m-seg.pt](https://huggingface.co/Bingsu/adetailer/tree/main)
* sams
  * [sam_vit_b_01ec64.pth](https://github.com/facebookresearch/segment-anything?tab=readme-ov-file#model-checkpoints)

#### Pre-installed custom nodes

* [https://github.com/ltdrdata/ComfyUI-Manager](https://github.com/ltdrdata/ComfyUI-Manager)	![GitHub Repo stars](https://img.shields.io/github/stars/ltdrdata/ComfyUI-Manager?logo=none)
* [https://github.com/11cafe/comfyui-workspace-manager](https://github.com/11cafe/comfyui-workspace-manager)	![GitHub Repo stars](https://img.shields.io/github/stars/11cafe/comfyui-workspace-manager?logo=none)
* [https://github.com/pythongosssss/ComfyUI-Custom-Scripts](https://github.com/pythongosssss/ComfyUI-Custom-Scripts)	![GitHub Repo stars](https://img.shields.io/github/stars/pythongosssss/ComfyUI-Custom-Scripts?logo=none)
* [https://github.com/rgthree/rgthree-comfy](https://github.com/rgthree/rgthree-comfy)	![GitHub Repo stars](https://img.shields.io/github/stars/rgthree/rgthree-comfy?logo=none)
* [https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes](https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes)	![GitHub Repo stars](https://img.shields.io/github/stars/Suzie1/ComfyUI_Comfyroll_CustomNodes?logo=none)
* [https://github.com/ltdrdata/ComfyUI-Inspire-Pack](https://github.com/ltdrdata/ComfyUI-Inspire-Pack)	![GitHub Repo stars](https://img.shields.io/github/stars/ltdrdata/ComfyUI-Inspire-Pack?logo=none)
* [https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes](https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes)	![GitHub Repo stars](https://img.shields.io/github/stars/Derfuu/Derfuu_ComfyUI_ModdedNodes?logo=none)
* [https://github.com/cubiq/ComfyUI_IPAdapter_plus](https://github.com/cubiq/ComfyUI_IPAdapter_plus)	![GitHub Repo stars](https://img.shields.io/github/stars/cubiq/ComfyUI_IPAdapter_plus?logo=none)
* [https://github.com/kijai/ComfyUI-Marigold](https://github.com/kijai/ComfyUI-Marigold)	![GitHub Repo stars](https://img.shields.io/github/stars/kijai/ComfyUI-Marigold?logo=none)
* [https://github.com/BlenderNeko/ComfyUI_TiledKSampler](https://github.com/BlenderNeko/ComfyUI_TiledKSampler)	![GitHub Repo stars](https://img.shields.io/github/stars/BlenderNeko/ComfyUI_TiledKSampler?logo=none)
* [https://github.com/pythongosssss/ComfyUI-WD14-Tagger](https://github.com/pythongosssss/ComfyUI-WD14-Tagger)	![GitHub Repo stars](https://img.shields.io/github/stars/pythongosssss/ComfyUI-WD14-Tagger?logo=none)
* [https://github.com/Stability-AI/stability-ComfyUI-nodes](https://github.com/Stability-AI/stability-ComfyUI-nodes)	![GitHub Repo stars](https://img.shields.io/github/stars/Stability-AI/stability-ComfyUI-nodes?logo=none)
* [https://github.com/jags111/efficiency-nodes-comfyui](https://github.com/jags111/efficiency-nodes-comfyui)	![GitHub Repo stars](https://img.shields.io/github/stars/jags111/efficiency-nodes-comfyui?logo=none)
* [https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet](https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet)	![GitHub Repo stars](https://img.shields.io/github/stars/AlekPet/ComfyUI_Custom_Nodes_AlekPet?logo=none)
* [https://github.com/crystian/ComfyUI-Crystools](https://github.com/crystian/ComfyUI-Crystools)	![GitHub Repo stars](https://img.shields.io/github/stars/crystian/ComfyUI-Crystools?logo=none)
* [https://github.com/LEv145/images-grid-comfy-plugin](https://github.com/LEv145/images-grid-comfy-plugin)	![GitHub Repo stars](https://img.shields.io/github/stars/LEv145/images-grid-comfy-plugin?logo=none)
* [https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet](https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet)	![GitHub Repo stars](https://img.shields.io/github/stars/Kosinkadink/ComfyUI-Advanced-ControlNet?logo=none)
* [https://github.com/Fannovel16/comfyui_controlnet_aux](https://github.com/Fannovel16/comfyui_controlnet_aux)	![GitHub Repo stars](https://img.shields.io/github/stars/Fannovel16/comfyui_controlnet_aux?logo=none)
* [https://github.com/kohya-ss/ControlNet-LLLite-ComfyUI](https://github.com/kohya-ss/ControlNet-LLLite-ComfyUI)	![GitHub Repo stars](https://img.shields.io/github/stars/kohya-ss/ControlNet-LLLite-ComfyUI?logo=none)
* [https://github.com/comfyanonymous/ComfyUI_experiments](https://github.com/comfyanonymous/ComfyUI_experiments)	![GitHub Repo stars](https://img.shields.io/github/stars/comfyanonymous/ComfyUI_experiments?logo=none)
* [https://github.com/FizzleDorf/ComfyUI_FizzNodes](https://github.com/FizzleDorf/ComfyUI_FizzNodes)	![GitHub Repo stars](https://img.shields.io/github/stars/FizzleDorf/ComfyUI_FizzNodes?logo=none)
* [https://github.com/WASasquatch/PowerNoiseSuite](https://github.com/WASasquatch/PowerNoiseSuite)	![GitHub Repo stars](https://img.shields.io/github/stars/WASasquatch/PowerNoiseSuite?logo=none)
* [https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved](https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved)	![GitHub Repo stars](https://img.shields.io/github/stars/Kosinkadink/ComfyUI-AnimateDiff-Evolved?logo=none)

## License

![GitHub License](https://img.shields.io/github/license/mrchengxin/model-starter?logo=github)
