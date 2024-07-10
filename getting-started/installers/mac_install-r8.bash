#!/usr/bin/env bash

CONDA_HOME=$HOME/miniconda
CONDA_BIN=$CONDA_HOME/condabin
CONDA_ENV_NAME=ca_hs24

if ! command -V conda &> /dev/null
then
	echo "Installing miniconda (Python distribution)…"
	curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o ./miniconda.sh &> /dev/null
	bash ./miniconda.sh -b -p $CONDA_HOME &> /dev/null
	echo "Installing miniconda (Python distribution)…Done!"

	echo "Configuring miniconda for first use…"
	$CONDA_BIN/conda init bash &> /dev/null
	source $HOME/.bash_profile &> /dev/null
	echo "Configuring miniconda for first use…Done!"
else
	CONDA_HOME=$(dirname $(dirname $CONDA_EXE))
fi

echo "Creating virtual environment…"
conda create -c conda-forge -n $CONDA_ENV_NAME compas=2 python=3.10 -y &> /dev/null
echo "Creating virtual environment…Done"

echo "Activating virtual environment…"
source $CONDA_HOME/bin/activate $CONDA_ENV_NAME
echo "Activating virtual environment…Done!"

echo "Installing development tools…"
python -m pip install black flake8 isort pytest rhino-stubs -q
echo "Installing development tools…Done!"

echo "Installing on Rhino…"
python -m compas_rhino.install -v 8.0
echo "Installing on Rhino…Done!"
