export GEMINI_API_KEY="AIzaSyCih1k3VBbhEtp65Vp_X1-xULp90X6Rn9c"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path bash)"
alias process="./run.sh"
export PATH="/c/Users/SpencerNunamakerTrav/saccade/target/release:$PATH"

# Starship prompt
eval "$(starship init bash)"

# Starship
command -v starship >/dev/null && eval "$(starship init bash)"
