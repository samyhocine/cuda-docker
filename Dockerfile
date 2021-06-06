FROM nvidia/cuda:11.3.1-base-ubuntu20.04

ENV FORCE_CUDA="1"

RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -yq wget unzip python3-pip libglib2.0 libgl1-mesa-glx libsm6 libxext6 libxrender-dev \
&& pip3 install torch==1.8.1+cu111 torchvision==0.9.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html --no-cache-dir \
&& pip3 install Cython==0.29.17 --no-cache-dir \
&& pip3 install numpy==1.20.3 --no-cache-dir
