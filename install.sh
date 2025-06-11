#!/bin/bash

# Get full path to current script
SCRIPT_PATH="$(realpath remover)"

# Target bin directory in Termux
TARGET_DIR="$PREFIX/bin"
TARGET_PATH="$TARGET_DIR/remover"

# Copy the script
cp "$SCRIPT_PATH" "$TARGET_PATH"
chmod +x "$TARGET_PATH"

echo "✅ 'remover' installed successfully!"
echo "📍 You can now run 'remover' from anywhere in Termux."