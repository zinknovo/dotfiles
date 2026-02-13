#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "pulling latest dotfiles..."
git -C "$DOTFILES_DIR" pull --ff-only

echo "re-linking..."
"$DOTFILES_DIR/install.sh"
