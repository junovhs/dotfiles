# dotfiles

Personal shell and CLI configuration.

## What this repo contains
- bashrc        -> shell configuration
- gitconfig     -> git configuration
- starship.toml -> prompt configuration (Starship)

## How it works
Files in this repo are symlinked into \$HOME so this repo is the single source of truth.

## Setup (any machine)

### Prereqs
- git
- bash
- starship
- Nerd Font (JetBrains Mono Nerd Font recommended)

### Install
git clone https://github.com/junovhs/dotfiles.git
cd dotfiles
./install.sh

Restart your terminal.

## Notes
- On Windows (Git Bash), symlinks require Developer Mode.
- MSYS=winsymlinks:nativestrict is enabled in bashrc.
