#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Claude Code commands
mkdir -p ~/.claude/commands
for f in "$DOTFILES_DIR"/claude/commands/*.md; do
  name="$(basename "$f")"
  target="$HOME/.claude/commands/$name"
  if [ -L "$target" ]; then
    rm "$target"
  elif [ -f "$target" ]; then
    echo "backup: $target -> ${target}.bak"
    mv "$target" "${target}.bak"
  fi
  ln -s "$f" "$target"
  echo "linked: $target -> $f"
done

echo "done!"
