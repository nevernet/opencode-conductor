#!/bin/bash

# Conductor Skill Installer for OpenCode
# This script installs Conductor Skill to OpenCode

set -e

REPO_URL="https://github.com/nevernet/opencode-conductor.git"
TEMP_DIR=$(mktemp -d)

# Parse arguments
INSTALL_MODE="project"

while [[ $# -gt 0 ]]; do
    case $1 in
        --project|--local)
            INSTALL_MODE="project"
            shift
            ;;
        --global)
            INSTALL_MODE="global"
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --project   Install to current project (default) - .opencode/skills/conductor/"
            echo "  --global    Install globally - ~/.config/opencode/skills/conductor/"
            echo "  -h, --help  Show this help message"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use -h or --help for usage information"
            exit 1
            ;;
    esac
done

echo "🎼 Installing Conductor Skill for OpenCode..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "⚠️  Warning: Not in a git repository."
fi

# Clone repository to temp directory
echo "📥 Downloading Conductor Skill..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1

# Determine target directory based on install mode
if [ "$INSTALL_MODE" = "global" ]; then
    TARGET_DIR="$HOME/.config/opencode/skills/conductor"
    echo "📁 Mode: Global installation"
else
    TARGET_DIR=".opencode/skills/conductor"
    echo "📁 Mode: Project-level installation"
fi

# Create target directory
mkdir -p "$TARGET_DIR"

# Copy skill file
echo "📋 Installing skill..."
cp "$TEMP_DIR/SKILL.md" "$TARGET_DIR/"

# Copy templates
echo "📋 Installing templates..."
cp -r "$TEMP_DIR/templates" "$TARGET_DIR/"

# Count installed files
FILE_COUNT=$(find "$TARGET_DIR" -type f 2>/dev/null | wc -l)

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "✅ Installation complete!"
echo ""
echo "Installed $FILE_COUNT files to $TARGET_DIR/:"
find "$TARGET_DIR" -type f | sed 's|'"$TARGET_DIR"'/|  - |'
echo ""
echo "Next steps:"
echo "  1. Open OpenCode"
echo "  2. Start a conversation and use /conductor:setup to initialize your project"
echo ""
echo "Available commands:"
echo "  /conductor:setup        - Initialize project"
echo "  /conductor:newTrack     - Create new feature track"
echo "  /conductor:review-plan - Review plan before implementation"
echo "  /conductor:implement   - Start implementation"
echo "  /conductor:status      - View progress"
echo "  /conductor:revert      - Revert changes"
echo "  /conductor:review      - Code review"
echo "  /conductor:archive     - Archive completed tracks"
echo ""
