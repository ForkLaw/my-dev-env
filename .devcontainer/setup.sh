#!/usr/bin/env bash
set -euo pipefail

echo "Running postCreateCommand..."

# Example: install extra CLI tools you always want
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
    ripgrep \
    fd-find \
    tmux \
    htop

echo "Setup complete."
