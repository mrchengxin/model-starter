![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/mrchengxin/model-starter/docker-image.yml?logo=github&logoColor=white&label=Build%20and%20Push%20Docker%20Image)
![GitHub License](https://img.shields.io/github/license/mrchengxin/model-starter?logo=github)

# model-starter

Use Docker to start a variety of AI models.

## :house: Image 1: ai-model-workspace

[https://hub.docker.com/r/mrchengxin/ai-model-workspace](https://hub.docker.com/r/mrchengxin/ai-model-workspace)

![Docker Image Size](https://img.shields.io/docker/image-size/mrchengxin/ai-model-workspace?logo=docker&logoColor=white)
![Docker Pulls](https://img.shields.io/docker/pulls/mrchengxin/ai-model-workspace?logo=docker&logoColor=white)
![Docker Image Version](https://img.shields.io/docker/v/mrchengxin/ai-model-workspace?logo=docker&logoColor=white)

This Docker image serves as an easy-to-use workspace for working with AI models.  
The goal is to prepare enough toolkits for you to start working with AI models with minimal effort.  
It comes pre-installed with a variety of very popular toolkits.

#### Base image

- [nvidia/cuda](https://hub.docker.com/r/nvidia/cuda/)
  - [Ubuntu 22.04](https://releases.ubuntu.com/jammy/)
  - [Nvidia CUDA math libraries](https://developer.nvidia.com/gpu-accelerated-libraries)
  - [Nvidia NCCL](https://developer.nvidia.com/nccl)

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
