#!/bin/bash

# Conductor Skill Installer for Cursor
# This script installs Conductor commands to .cursor/commands/

set -e

REPO_URL="https://github.com/nevernet/opencode-conductor.git"
TEMP_DIR=$(mktemp -d)
TARGET_DIR=".cursor/commands"

echo "🎼 Installing Conductor Skill for Cursor..."

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
cp "$TEMP_DIR/.cursor/commands/"*.md "$TARGET_DIR/"

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
echo "  1. Open Cursor"
echo "  2. In AI chat, type / and choose a conductor-* command (e.g. conductor-setup)"
echo ""
