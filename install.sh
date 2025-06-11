#!/bin/bash

# Target directory for installation
INSTALL_DIR="$HOME/bin"

# Create bin directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Copy remover script
cp remover "$INSTALL_DIR/"

# Make it executable
chmod +x "$INSTALL_DIR/remover"

# Check if $INSTALL_DIR is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo "WARNING: $INSTALL_DIR is not in your PATH."
  echo "Add this line to your shell config (~/.bashrc or ~/.zshrc):"
  echo "export PATH=\"\$PATH:$INSTALL_DIR\""
fi

echo "Installation complete!"
echo "You can now run 'remover' from anywhere."
