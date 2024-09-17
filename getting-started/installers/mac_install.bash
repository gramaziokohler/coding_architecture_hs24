#!/usr/bin/env bash

while true; do
    read -n 1 -p "Select Rhino version (6, 7, 8, or Q to quit):" RHINO_VERSION
    printf "\n";
    case $RHINO_VERSION in
        6* ) break;;
        7* ) break;;
        8* ) break;;
        [Qq]* ) exit;;
        * ) printf "Invalid Rhino version, please choose either 6, 7 or 8.\n";;
    esac
done

CONDA_HOME=$HOME/miniconda
CONDA_BIN=$CONDA_HOME/condabin
CONDA_ENV_NAME=ca_hs24
ARCH=$(uname -m)

printf "[√] Starting installation: Coding Architecture…\n"

printf "[ ] Checking conda…"

if ! command -V conda &> /dev/null
then
    printf "\r[x] Conda not found, we will install Miniconda\n"
    printf "[ ] Installing miniconda (Python distribution)…"
    # curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ./miniconda.sh &> /dev/null
    curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-$ARCH.sh -o ./miniconda.sh &> /dev/null
    bash ./miniconda.sh -b -u -p $CONDA_HOME &> /dev/null
    printf "\r[√] Installing miniconda (Python distribution)…\n"

    printf "[ ] Configuring miniconda for first use…"
    $CONDA_BIN/conda init bash &> /dev/null
    source $HOME/.bash_profile &> /dev/null
    printf "\r[√] Configured miniconda for first use successfully\n"
else
    CONDA_HOME=$(dirname $(dirname $CONDA_EXE))
    printf "\r[√] Conda command found!\n"
fi

if { conda env list | grep $CONDA_ENV_NAME; } >/dev/null 2>&1; then
    printf "[√] Virtual environment already exists! ($CONDA_ENV_NAME)\n"
else
    printf "[√] Virtual environment not found, will create it now…\n"

    printf "[ ] Creating virtual environment…"
    conda create -c conda-forge -n $CONDA_ENV_NAME 'compas>=2.4,<3' python=3.10 -y &> /dev/null
    printf "\r[√] Created virtual environment '$CONDA_ENV_NAME' successfully\n"
fi

printf "[ ] Activating virtual environment…"
source $CONDA_HOME/bin/activate $CONDA_ENV_NAME
printf "\r[√] Activated virtual environment successfully\n"


printf "[ ] Installing development tools…"
python -m pip install black flake8 isort pytest rhino-stubs -q
printf "\r[√] Installed development tools successfully\n"

printf "[√] Activating environment '$CONDA_ENV_NAME' for Rhino…\n"
python -m compas_rhino.install -v $RHINO_VERSION.0
printf "\r[√] Successfully installed Coding Architecture tools on Rhino\n"
