#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;

SETUP_TYPE=$1
MY_DIR="$(dirname "$0")"

clear

echo
echo "Setting up a '$SETUP_TYPE' machine..."

#source ${MY_DIR}/xcode-license.sh

# Note: Homebrew needs to be set up first
source ${MY_DIR}/homebrew.sh
source ${MY_DIR}/configuration-osx.sh
source ${MY_DIR}/git.sh
source ${MY_DIR}/node.sh
source ${MY_DIR}/go.sh
source ${MY_DIR}/applications-common.sh
source ${MY_DIR}/finished.sh
