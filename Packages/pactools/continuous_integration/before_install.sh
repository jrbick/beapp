#!/bin/sh

set -e

wget -q http://repo.continuum.io/miniconda/Miniconda-3.6.0-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b -p /home/travis/miniconda
export PATH=/home/travis/miniconda/bin:$PATH
conda update --yes --quiet conda
