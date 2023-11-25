INSTALL_DIR="/usr/local/bin"
BINARY_URL="https://github.com/karthickthankyou/simpleprint/releases/download/v1.0.0/simpleprint"

# Download the binary
curl -sSL -o "$INSTALL_DIR/simpleprint.zip" "$BINARY_URL"

# Unzip and remove the zip file
unzip "$INSTALL_DIR/simpleprint.zip" -d "$INSTALL_DIR"
rm "$INSTALL_DIR/simpleprint.zip"

# Make the binary executable
chmod +x "$INSTALL_DIR/simpleprint"
