#!/bin/bash

source ~/miniconda3/etc/profile.d/conda.sh
conda config --set env_prompt '({name}) '

# Create conda environment
conda env create -f environment.yml
