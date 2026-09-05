#!/bin/bash
# Install OpenCode config from dotfiles-opencode
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_DIR="$HOME/.config/opencode"
BACKUP_DIR="$HOME/.config/opencode.backup-$(date +%Y%m%d-%H%M%S)"

echo "=== OpenCode Config Installer ==="

# Backup existing config
if [ -d "$CONFIG_DIR" ]; then
    echo "Backing up existing config to $BACKUP_DIR"
    cp -a "$CONFIG_DIR" "$BACKUP_DIR"
fi

# Create directories
mkdir -p "$CONFIG_DIR/agents"
mkdir -p "$CONFIG_DIR/skills/git-workflow"
mkdir -p "$CONFIG_DIR/commands"
mkdir -p "$CONFIG_DIR/agent-memory"

# Copy files
echo "Installing config..."
cp "$SCRIPT_DIR/opencode/opencode.jsonc" "$CONFIG_DIR/"
cp "$SCRIPT_DIR/opencode/agents/"*.md "$CONFIG_DIR/agents/"
cp "$SCRIPT_DIR/opencode/skills/git-workflow/SKILL.md" "$CONFIG_DIR/skills/git-workflow/"
cp "$SCRIPT_DIR/opencode/commands/"*.md "$CONFIG_DIR/commands/"
cp "$SCRIPT_DIR/AGENTS.md" "$HOME/"

echo "Done! Run 'opencode debug config' to verify."
