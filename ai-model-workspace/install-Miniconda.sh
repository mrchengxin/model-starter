#!/bin/bash

mkdir -p /opt/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$(arch).sh -O /opt/miniconda3/miniconda.sh
bash /opt/miniconda3/miniconda.sh -b -u -p /opt/miniconda3
rm -rf /opt/miniconda3/miniconda.sh
/opt/miniconda3/bin/conda init zsh
/opt/miniconda3/bin/conda init bash

# clean up
apt-get clean
rm -rf /var/lib/apt/lists/*
