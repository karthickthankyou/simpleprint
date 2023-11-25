#!/bin/bash

# Changing permission for the install script
chmod +x install.sh

# Compiling the Rust project
echo "Compiling SimplePrint..."
cargo build --release

echo "Build completed."
