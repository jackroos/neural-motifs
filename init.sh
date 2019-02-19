#!/usr/bin/env bash

pip install --upgrade pip
pip install -y Cython matplotlib h5py pycocotools tqdm
conda install -y pytorch=0.3.0 torchvision=0.2.0 cuda90 -c pytorch
make
