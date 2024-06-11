FROM registry.cn-shanghai.aliyuncs.com/mrchengxin/ai-model-workspace:latest

# install and customize ComfyUI
COPY install-ComfyUI.sh /tmp
RUN bash /tmp/install-ComfyUI.sh






# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint script as the ENTRYPOINT
ENTRYPOINT ["/entrypoint.sh"]

WORKDIR /root

# Set Zsh as the default shell
SHELL ["/usr/bin/zsh", "-c"]
