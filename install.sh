
#!/usr/bin/env bash

set -euo pipefail



REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



mkdir -p "$HOME/.config"

mkdir -p "$HOME/.config/alacritty"



ln -sf "$REPO_DIR/bashrc" "$HOME/.bashrc"

ln -sf "$REPO_DIR/gitconfig" "$HOME/.gitconfig"

ln -sf "$REPO_DIR/starship.toml" "$HOME/.config/starship.toml"



case "$OSTYPE" in

  msys*|cygwin*)

    mkdir -p "$APPDATA/alacritty"

    cp "$REPO_DIR/windows/alacritty.toml" "$APPDATA/alacritty/alacritty.toml"

    ;;

  linux*)

    ln -sf "$REPO_DIR/linux/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

    ;;

esac



echo "Done. Restart terminal."

