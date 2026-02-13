#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$HOME/.dotfiles"

if [ -d "$DOTFILES_DIR/.git" ]; then
  echo "dotfiles already exists, running update..."
  "$DOTFILES_DIR/update.sh"
else
  echo "cloning dotfiles..."
  git clone https://github.com/zinknovo/dotfiles.git "$DOTFILES_DIR"
  "$DOTFILES_DIR/install.sh"
fi

echo "all set! restart your terminal or run: source ~/.zshrc"
