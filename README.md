# dotfiles

Personal shell and CLI configuration.
Works on **Windows (Git Bash)** and **Linux (Pop!_OS)**.

This repo is the single source of truth for:
- bash configuration
- git configuration
- Starship prompt

---

## What this repo contains

- bashrc        -> shell configuration
- gitconfig     -> git configuration
- starship.toml -> prompt configuration (Starship)
- install.sh    -> sets up symlinks

All files are symlinked into \$HOME.

---

## Setup — Windows 11 (Git Bash)

Prereqs:
- Git for Windows
- Windows Terminal
- Developer Mode enabled
- Starship installed
- Nerd Font installed (JetBrains Mono Nerd Font)

Run:

cd ~
git clone https://github.com/junovhs/dotfiles.git
cd dotfiles
./install.sh

Close and reopen terminal.

---

## Setup — Pop!_OS (Linux)

Prereqs:
- git
- curl
- bash

Run:

sudo apt update
sudo apt install -y git curl
curl -sS https://starship.rs/install.sh | sh -s -- -y

cd ~
git clone https://github.com/junovhs/dotfiles.git
cd dotfiles
./install.sh

Close and reopen terminal.

---

## Daily usage

Edit files only in:

~/dotfiles

Commit and push:

git commit -am "update"
git push

On other machines:

cd ~/dotfiles
git pull

---

## Notes

- On Windows, symlinks require Developer Mode.
- Git Bash uses native Windows symlinks.
- This repo is intentionally minimal.
