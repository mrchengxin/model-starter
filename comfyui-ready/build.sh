#!/bin/bash

docker build --progress=plain -t comfyui-ready:latest . &> build.log

# docker build -t comfyui-ready:latest .
