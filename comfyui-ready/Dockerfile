FROM mrchengxin/ai-model-workspace:latest

# create directory for ComfyUI scripts
RUN mkdir -p /opt/ComfyUI

# install ComfyUI
COPY ./install-ComfyUI.sh /opt/ComfyUI
RUN /opt/ComfyUI/install-ComfyUI.sh

# install custom nodes
COPY ./install-custom-nodes.sh /opt/ComfyUI
# RUN /opt/ComfyUI/install-custom-nodes.sh

WORKDIR /root

CMD [ "/usr/bin/zsh" ]
