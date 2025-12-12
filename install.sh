#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.config"

ln -sf "$REPO_DIR/bashrc" "$HOME/.bashrc"
ln -sf "$REPO_DIR/gitconfig" "$HOME/.gitconfig"
ln -sf "$REPO_DIR/starship.toml" "$HOME/.config/starship.toml"

echo "Done. Restart your terminal."
