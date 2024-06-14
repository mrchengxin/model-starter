FROM ai-model-workspace:latest AS build

# install pytorch
COPY ./install-pytorch.sh /tmp
RUN /tmp/install-pytorch.sh

FROM ai-model-workspace:latest

COPY --from=build /opt/miniconda3/. /opt/miniconda3

RUN mkdir -p /opt/ComfyUI

# install ComfyUI
COPY ./install-ComfyUI.sh /opt/ComfyUI
RUN /opt/ComfyUI/install-ComfyUI.sh

# install custom nodes
COPY ./install-custom-nodes.sh /opt/ComfyUI
# RUN /opt/ComfyUI/install-custom-nodes.sh

WORKDIR /root

CMD [ "/usr/bin/zsh" ]
