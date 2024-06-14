#!/bin/bash

docker build --progress=plain -t ai-model-workspace:latest . &> build.log

# docker build -t ai-model-workspace:latest .
