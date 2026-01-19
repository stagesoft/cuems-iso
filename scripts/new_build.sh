#!/bin/bash

# Create new build for a given distribution
# Usage: ./scripts/new_build.sh <distribution>
# Example: ./scripts/new_build.sh bookworm

distribution=$1

if [ -z "$distribution" ]; then
    echo "Usage: ./scripts/new_build.sh <distribution>"
    exit 1
fi

echo "Creating new build for $distribution"

# Create new build directory
mkdir -p "debian-images/$distribution"

# use live-build to create new build
lb config \
  --distribution $distribution \
  --archive-areas "main contrib non-free non-free-firmware" \
  --binary-images iso-hybrid \
  --debian-installer live \
  --architectures amd64
