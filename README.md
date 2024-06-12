# model-starter

Use Docker to start a variety of AI models.

## ai-model-workspace

This is a customized base Docker image.  
It has some highly popular toolkits pre-installed.

### Base image

- [nvidia/cuda](https://hub.docker.com/r/nvidia/cuda/)
  - [Ubuntu 22.04](https://releases.ubuntu.com/jammy/)
  - [Nvidia CUDA math libraries](https://developer.nvidia.com/gpu-accelerated-libraries)
  - [Nvidia NCCL](https://developer.nvidia.com/nccl)

### Users

- `root`: the root user
- `ubuntu`: the default normal user, can use sudo without password

### Pre-installed libraries and tools

1. [Zsh](https://www.zsh.org/)
   - [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
   - [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)
   - [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
   - [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
2. [Miniconda](https://docs.anaconda.com/free/miniconda/)
3. [p4gefau1t/trojan-go](https://github.com/p4gefau1t/trojan-go)
4. [fatedier/frp](https://github.com/fatedier/frp)
