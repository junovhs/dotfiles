# dotfiles

Single-command setup for a consistent shell environment on:

- Windows 11 (Git Bash inside Windows Terminal)
- Pop!_OS (Linux)

This repo is the **single source of truth** for:
- bash configuration
- git configuration
- Starship prompt

All configs are applied via **symlinks**.

---

# QUICK START (DO THIS, NOTHING ELSE)

## Windows 11 (Git Bash)

Prereqs (one-time, manual):
- Git for Windows
- Windows Terminal
- Developer Mode enabled
- Starship installed
- Nerd Font installed (JetBrains Mono Nerd Font)

Run:

cd ~
git clone https://github.com/junovhs/dotfiles.git
cd dotfiles
export MSYS=winsymlinks:nativestrict
./install.sh

Close all terminals. Reopen.

Verify (must show arrows):

ls -la ~/.bashrc ~/.gitconfig ~/.config/starship.toml

---

## Pop!_OS (Linux)

Run:

sudo apt update
sudo apt install -y git curl
curl -sS https://starship.rs/install.sh | sh -s -- -y

cd ~
git clone https://github.com/junovhs/dotfiles.git
cd dotfiles
./install.sh

Close terminal. Reopen.

Verify (must show arrows):

ls -la ~/.bashrc ~/.gitconfig ~/.config/starship.toml

---

# RESET (SAFE)

If anything breaks, run:

rm -f ~/.bashrc ~/.gitconfig ~/.config/starship.toml
rm -rf ~/dotfiles

Then repeat QUICK START.

---

# DAILY USAGE

- Edit configs only in: ~/dotfiles
- Commit changes:
  git commit -am "update"
  git push
- On other machines:
  cd ~/dotfiles
  git pull

---

# NOTES

- This repo intentionally does NOT install system packages.
- Windows requires Developer Mode for real symlinks.
- Git Bash uses native Windows symlinks.
- This setup is minimal by design.
