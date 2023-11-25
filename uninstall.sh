#!/bin/bash

# Set the current script to be executable
chmod +x "$0"

# Define the installation directory
INSTALL_DIR="/usr/local/bin"

# Remove the binary
echo "Uninstalling SimplePrint..."
sudo rm "$INSTALL_DIR/simpleprint"

echo "Uninstallation completed."
