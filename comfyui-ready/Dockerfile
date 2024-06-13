FROM mrchengxin/ai-model-workspace:latest

# install ComfyUI
COPY ./install-ComfyUI.sh /tmp
RUN /tmp/install-ComfyUI.sh

# install custom nodes
COPY ./install-custom-nodes.sh /tmp

WORKDIR /root

# Set Zsh as the default shell
CMD ["/usr/bin/zsh"]
