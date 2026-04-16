#!/usr/bin/env bash
set -uo pipefail

echo "Running postCreateCommand..."

# Remove broken third-party repos that fail apt-get update on this image
sudo rm -f /etc/apt/sources.list.d/yarn.list

# Allow apt to fail gracefully without killing the script
sudo apt-get update || echo "apt-get update had warnings, continuing anyway"

sudo apt-get install -y --no-install-recommends \
    ripgrep \
    fd-find \
    tmux \
    htop

echo "Setup complete."