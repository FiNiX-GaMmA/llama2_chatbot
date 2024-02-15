#!/bin/bash

# Ensure the script is executed with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Set non-interactive frontend to avoid prompts from apt-get
export DEBIAN_FRONTEND=noninteractive

# Update system and install necessary packages
apt-get update && apt-get install -y curl python3-pip


# Install Python packages
if [ -f "./requirements.txt" ]; then
    pip install -r ./requirements.txt
else
    echo "requirements.txt file does not exist in the specified path."
    exit 1
fi
