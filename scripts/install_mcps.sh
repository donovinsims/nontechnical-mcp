#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MCP_DIR="$ROOT_DIR/mcp"

mkdir -p "$MCP_DIR"

declare -A REPOS=(
  ["playwright-mcp"]="https://github.com/microsoft/playwright-mcp.git"
  ["figma-context-mcp"]="https://github.com/GLips/Figma-Context-MCP.git"
  ["reddit-mcp"]="https://github.com/Arindam200/reddit-mcp.git"
  ["mobilecli"]="https://github.com/mobile-next/mobilecli.git"
)

for NAME in "${!REPOS[@]}"; do
  TARGET_DIR="$MCP_DIR/$NAME"
  REPO_URL="${REPOS[$NAME]}"

  if [ -d "$TARGET_DIR/.git" ]; then
    echo "Updating $NAME..."
    git -C "$TARGET_DIR" pull --ff-only
  elif [ -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR exists but is not a git repository; skipping."
  else
    echo "Cloning $NAME from $REPO_URL..."
    git clone "$REPO_URL" "$TARGET_DIR"
  fi
done
