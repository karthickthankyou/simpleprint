#!/bin/bash

INSTALL_DIR="/usr/local/bin"
BINARY_URL="https://github.com/karthickthankyou/simpleprint/releases/download/v1.0.0/simpleprint"

# Download the binary
sudo curl -sSL -o "$INSTALL_DIR/simpleprint" "$BINARY_URL"

# Make the binary executable
sudo chmod +x "$INSTALL_DIR/simpleprint"

echo "Installation completed. You can now use SimplePrint with the command 'simpleprint'."
