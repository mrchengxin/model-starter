FROM nvidia/cuda:12.5.0-runtime-ubuntu22.04

# install frequently used libraries and tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget git htop vim pciutils aria2 git-lfs curl \
    httpie ncdu openssh-server zip unzip fontconfig \
    zsh iputils-ping jq bmon sudo

ENV USERNAME="ubuntu"

# Create a new user
RUN adduser --disabled-password --gecos '' ${USERNAME}
RUN usermod -aG sudo ${USERNAME}
RUN echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ${USERNAME}

# set Zsh as the default shell for the current user
RUN sudo chsh -s $(which zsh)

# add git config
COPY --chown=${USERNAME}:${USERNAME} .gitconfig /home/${USERNAME}/.gitconfig

# install and customize oh-my-zsh
COPY install-oh-my-zsh.sh /tmp
COPY --chown=${USERNAME}:${USERNAME} .p10k.zsh /home/${USERNAME}/.p10k.zsh
RUN bash /tmp/install-oh-my-zsh.sh

# install Miniconda
COPY install-Miniconda.sh /tmp
RUN bash /tmp/install-Miniconda.sh

# install trojan-go
COPY install-trojan-go.sh /tmp
COPY ./etc/init.d/trojan-go /etc/init.d/trojan-go
RUN bash /tmp/install-trojan-go.sh

# set the default working directory
WORKDIR /home/${USERNAME}

# use Zsh when the container starts
CMD ["/bin/zsh"]
