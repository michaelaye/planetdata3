#!/bin/sh
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 conda_env_name" >&2
    exit 1
fi
if [ -n $CONDA_DEFAULT_ENV ]
then
  if [ "$CONDA_DEFAULT_ENV" == "$1" ]
  then
    echo "Deactive $1 environment first." >&2
    exit 1
  fi
fi

conda env remove -n "$1" -y
conda create -n "$1" -y python=3
conda install -n "$1" -y --file ~/Dropbox/standard_py3_conda_packages.txt
cd ~/Dropbox/src/
source activate "$1"
