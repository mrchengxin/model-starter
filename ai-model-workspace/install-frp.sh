#!/bin/bash

ARCHIVE_NAME=frp_0.58.1_linux_amd64
if [ "$(arch)" == "aarch64" ]; then
    ARCHIVE_NAME=frp_0.58.1_linux_arm64
fi

# Download the archive from GitHub
wget -O /tmp/${ARCHIVE_NAME}.tar.gz https://github.com/fatedier/frp/releases/download/v0.58.1/${ARCHIVE_NAME}.tar.gz

# Unzip the archive to a specific directory
mkdir -p /opt/frp
tar -zxvf /tmp/${ARCHIVE_NAME}.tar.gz -C /opt/frp --strip-components=1
rm /opt/frp/frpc.toml
rm /opt/frp/frps.toml
rm /tmp/${ARCHIVE_NAME}.tar.gz
