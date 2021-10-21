#!/bin/bash
# Install conda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash


# Install nano
sudo apt-get -y install nano


# Install vim
sudo apt-get -y install vim


# Install openssh-server
sudo apt -y install openssh-server


# Install Docker
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# Create Conda environment
conda env create -f environment.yml
