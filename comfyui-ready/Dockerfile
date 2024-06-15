# FROM mrchengxin/ai-model-workspace:latest
FROM mrchengxin/ai-model-workspace:latest

# create the Python environment for ComfyUI
RUN conda create -n comfyui python==3.11.9 -y \
    && echo -e "conda activate comfyui" >> ~/.zshrc \
    && echo -e "conda activate comfyui" >> ~/.bashrc

RUN mkdir -p /opt/ComfyUI

# download ComfyUI, custom nodes, and essential models
COPY ./download-ComfyUI.sh /opt/ComfyUI
RUN /opt/ComfyUI/download-ComfyUI.sh

# download essential models
COPY ./download-essential-models.sh /opt/ComfyUI
RUN /opt/ComfyUI/download-essential-models.sh

# install ComfyUI
COPY ./install-ComfyUI.sh /opt/ComfyUI
# RUN /opt/ComfyUI/install-ComfyUI.sh

# a script to start ComfyUI correctly
COPY ./start-ComfyUI.sh /root

WORKDIR /root

CMD [ "/usr/bin/zsh" ]
