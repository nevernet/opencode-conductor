#!/bin/bash

# Conductor Skill Installer for Trae
# This script installs Conductor commands and skills to .trae/

set -e

REPO_URL="https://github.com/nevernet/opencode-conductor.git"
TEMP_DIR=$(mktemp -d)
COMMANDS_DIR=".trae/commands"
SKILLS_DIR=".trae/skills"

echo "🎼 Installing Conductor Skill for Trae..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "⚠️  Warning: Not in a git repository. Commands will be installed to current directory."
fi

# Clone repository to temp directory
echo "📥 Downloading Conductor Skill..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1

# Create target directories
mkdir -p "$COMMANDS_DIR"
mkdir -p "$SKILLS_DIR/conductor"

# Copy command files
echo "📋 Installing commands..."
cp "$TEMP_DIR/.trae/commands/"*.md "$COMMANDS_DIR/"

# Copy skill files
echo "🎯 Installing skills..."
cp "$TEMP_DIR/.trae/skills/conductor/SKILL.md" "$SKILLS_DIR/conductor/"

# Copy SKILL.md to project root (optional, for reference)
if [ ! -f "SKILL.md" ]; then
    echo "📄 Copying SKILL.md to project root..."
    cp "$TEMP_DIR/SKILL.md" ./
fi

# Count installed items
CMD_COUNT=$(ls -1 "$COMMANDS_DIR/"*.md 2>/dev/null | wc -l | tr -d ' ')

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "✅ Installation complete!"
echo ""
echo "Installed:"
echo "  - $CMD_COUNT commands to $COMMANDS_DIR/"
ls -1 "$COMMANDS_DIR/"*.md 2>/dev/null | sed 's/.*\//    /'
echo ""
echo "  - 1 skill to $SKILLS_DIR/conductor/"
echo "    SKILL.md"
echo ""
echo "Next steps:"
echo "  1. Open Trae"
echo "  2. In AI chat, type / and choose a conductor-* command (e.g. conductor-setup)"
echo "  3. Or use the conductor skill directly for Context-Driven Development"
echo ""
