#!/bin/bash

# Define the installation directory
INSTALL_DIR="/usr/local/bin"

# Compiling the Rust project
echo "Compiling SimplePrint..."
cargo build --release

# Check if the build was successful
if [ ! -f target/release/simpleprint ]; then
    echo "Build failed, cannot install."
    exit 1
fi

# Copy the binary to the installation directory
echo "Installing SimplePrint..."
sudo mv target/release/simpleprint $INSTALL_DIR/simpleprint

# Make the binary executable
sudo chmod +x $INSTALL_DIR/simpleprint

echo "Installation completed. You can now use SimplePrint with the command 'simpleprint'."
