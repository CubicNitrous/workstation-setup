#!/usr/bin/env bash
set -euo pipefail

sudo systemsetup -settimezone America/Chicago
chflags nohidden ~/Library
sudo chflags nohidden /Volumes

defaults write com.apple.screencapture location -string "${HOME}/Desktop"
killall SystemUIServer
killall Dock
