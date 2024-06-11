#!/bin/bash

ZIP_NAME=trojan-go-linux-amd64

# Download the zip file
wget -O /tmp/${ZIP_NAME}.zip https://github.com/p4gefau1t/trojan-go/releases/download/v0.10.6/${ZIP_NAME}.zip

# Unzip the file to a specific directory
sudo unzip /tmp/${ZIP_NAME}.zip -d /usr/local/${ZIP_NAME}/
rm /tmp/${ZIP_NAME}.zip
