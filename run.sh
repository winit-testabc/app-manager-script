#!/bin/bash

# Wrapper script that downloads and runs setup-app.sh
# This avoids pipe-related terminal input issues

set -e

SCRIPT_URL="https://raw.githubusercontent.com/winit-testabc/app-manager-script/main/setup-app.sh"
TEMP_SCRIPT=$(mktemp)

echo "Downloading app-manager-script..."
curl -fsSL "$SCRIPT_URL" -o "$TEMP_SCRIPT"
chmod +x "$TEMP_SCRIPT"

echo "Running script..."
exec "$TEMP_SCRIPT"

