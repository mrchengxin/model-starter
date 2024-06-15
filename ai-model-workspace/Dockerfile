FROM nvidia/cuda:12.5.0-base-ubuntu22.04

# install frequently used libraries and tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget git htop vim pciutils aria2 git-lfs curl \
    httpie ncdu openssh-server zip unzip fontconfig \
    zsh iputils-ping jq bmon gcc ninja-build \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# set Zsh as the default shell
RUN chsh -s $(which zsh)

# use Zsh to execute commands
SHELL [ "/usr/bin/zsh", "-c" ]

# customize git
COPY .gitconfig /root/.gitconfig
RUN git lfs install

# install and customize oh-my-zsh
COPY install-oh-my-zsh.sh /tmp
COPY .p10k.zsh /root/.p10k.zsh
RUN /tmp/install-oh-my-zsh.sh

# install trojan-go
COPY install-trojan-go.sh /tmp
COPY ./etc/init.d/trojan-go /etc/init.d/trojan-go
RUN /tmp/install-trojan-go.sh

# install frpc
COPY install-frp.sh /tmp
COPY ./etc/init.d/frpc /etc/init.d/frpc
RUN /tmp/install-frp.sh

# install Miniconda
RUN mkdir -p /opt/miniconda3 \
    && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$(arch).sh -O /opt/miniconda3/miniconda.sh \
    && bash /opt/miniconda3/miniconda.sh -b -u -p /opt/miniconda3 \
    && rm -rf /opt/miniconda3/miniconda.sh \
    && /opt/miniconda3/bin/conda init zsh \
    && /opt/miniconda3/bin/conda init bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ENV PATH /opt/miniconda3/bin:$PATH

# set the default working directory
WORKDIR /root

# use Zsh when the container starts
CMD [ "/usr/bin/zsh" ]
