FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime

# install frequently used libraries and tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget git htop vim pciutils aria2 git-lfs curl \
    httpie ncdu openssh-server zip unzip fontconfig \
    zsh iputils-ping jq bmon gcc ninja-build \
    build-essential

# set Zsh as the default shell for the current user
RUN chsh -s $(which zsh)

# customize git
COPY .gitconfig /root/.gitconfig
RUN git lfs install

# install and customize oh-my-zsh
COPY install-oh-my-zsh.sh /tmp
COPY .p10k.zsh /root/.p10k.zsh
RUN bash /tmp/install-oh-my-zsh.sh

# install Miniconda
# COPY install-Miniconda.sh /tmp
# RUN bash /tmp/install-Miniconda.sh

# install trojan-go
COPY install-trojan-go.sh /tmp
COPY ./etc/init.d/trojan-go /etc/init.d/trojan-go
RUN bash /tmp/install-trojan-go.sh

# install frpc
COPY install-frp.sh /tmp
COPY ./etc/init.d/frpc /etc/init.d/frpc
RUN bash /tmp/install-frp.sh

# remove apt caches
RUN rm -rf /var/lib/apt/lists/*

# set the default working directory
WORKDIR /root

# use Zsh when the container starts
CMD ["/bin/zsh"]
