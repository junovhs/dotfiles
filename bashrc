case $- in
  *i*) ;;
  *) return ;;
esac

case "$OSTYPE" in
  msys*|cygwin*)
    export MSYS="winsymlinks:nativestrict"
    ;;
esac

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

[ -f "$HOME/.bashrc.local" ] && . "$HOME/.bashrc.local"

tree() {
  cmd //c tree "$@"
}

command -v starship >/dev/null 2>&1 && eval "$(starship init bash)"
