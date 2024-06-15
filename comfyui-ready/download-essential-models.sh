#!/bin/bash

INSTALL_DIR="/root"

cat <<EOF >/tmp/essential-models.txt
# vae
https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors?download=true
  out=vae/sd15-vae-ft-mse-840000-ema-pruned.safetensors
https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors?download=true
  out=vae/xl-vae-fp16-fix.safetensors
# upscale_models
https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.2.4/RealESRGAN_x4plus_anime_6B.pth
  out=upscale_models/RealESRGAN_x4plus_anime_6B.pth
https://github.com/xinntao/Real-ESRGAN/releases/download/v0.1.0/RealESRGAN_x4plus.pth
  out=upscale_models/RealESRGAN_x4plus.pth
# embeddings
https://huggingface.co/datasets/gsdf/EasyNegative/resolve/main/EasyNegative.safetensors?download=true
  out=embeddings/sd15-EasyNegative.safetensors
https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/embedding/EasyNegativeV2.safetensors?download=true
  out=embeddings/sd15-EasyNegativeV2.safetensors
https://huggingface.co/gsdf/CounterfeitXL/resolve/main/embeddings/negativeXL_D.safetensors?download=true
  out=embeddings/xl-negativeXL_Standard.safetensors
https://huggingface.co/gsdf/CounterfeitXL/resolve/main/embeddings/negativeXL_B.safetensors?download=true
  out=embeddings/xl-negativeXL_Realistic.safetensors
https://huggingface.co/gsdf/CounterfeitXL/resolve/main/embeddings/negativeXL_C.safetensors?download=true
  out=embeddings/xl-negativeXL_Anime.safetensors
# loras
https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors?download=true
  out=loras/sd15-lora-lcm.safetensors
https://huggingface.co/latent-consistency/lcm-lora-sdxl/resolve/main/pytorch_lora_weights.safetensors?download=true
  out=loras/xl-lora-lcm.safetensors
# ultralytics
https://huggingface.co/Bingsu/adetailer/resolve/main/face_yolov8m.pt?download=true
  out=ultralytics/bbox/face_yolov8m.pt
https://huggingface.co/Bingsu/adetailer/resolve/main/hand_yolov8s.pt?download=true
  out=ultralytics/bbox/hand_yolov8s.pt
https://huggingface.co/Bingsu/adetailer/resolve/main/person_yolov8m-seg.pt?download=true
  out=ultralytics/segm/person_yolov8m-seg.pt
# sams
https://dl.fbaipublicfiles.com/segment_anything/sam_vit_b_01ec64.pth
  out=sams/sam_vit_b_01ec64.pth
EOF

aria2c -s 10 -x 10 \
    --file-allocation=falloc \
    --disable-ipv6 \
    --input-file /tmp/essential-models.txt \
    --dir ${INSTALL_DIR}/ComfyUI/models \
    --continue
