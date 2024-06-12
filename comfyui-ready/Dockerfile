FROM mrchengxin/ai-model-workspace:latest

# install and customize ComfyUI
COPY ./install-ComfyUI.sh /tmp
RUN /tmp/install-ComfyUI.sh

WORKDIR /root

# Set Zsh as the default shell
CMD ["/usr/bin/zsh"]
