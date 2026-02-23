#!/bin/bash

# Conductor Skill Installer for CodeBuddy
# This script installs Conductor commands to .codebuddy/commands/

set -e

REPO_URL="https://github.com/nevernet/opencode-conductor.git"
TEMP_DIR=$(mktemp -d)
TARGET_DIR=".codebuddy/commands"

echo "🎼 Installing Conductor Skill for CodeBuddy..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "⚠️  Warning: Not in a git repository. Commands will be installed to current directory."
fi

# Clone repository to temp directory
echo "📥 Downloading Conductor Skill..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1

# Create target directory
mkdir -p "$TARGET_DIR"

# Copy command files
echo "📋 Installing commands..."
cp "$TEMP_DIR/.codebuddy/commands/"*.md "$TARGET_DIR/"

# Count installed commands
CMD_COUNT=$(ls -1 "$TARGET_DIR/"*.md 2>/dev/null | wc -l)

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "✅ Installation complete!"
echo ""
echo "Installed $CMD_COUNT commands to $TARGET_DIR/:"
ls -1 "$TARGET_DIR/"*.md | sed 's/^/  - /'
echo ""
echo "Next steps:"
echo "  1. Start CodeBuddy"
echo "  2. Type: /conductor:setup"
echo ""
