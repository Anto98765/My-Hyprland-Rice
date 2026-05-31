#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'


REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ask_yes_no() {
  local prompt="$1"
  local ans
  read -r -p "$prompt [y/N]: " ans
  case "$ans" in
    [Yy]*) return 0 ;;
    *) return 1 ;;
  esac
}

echo
echo "============================================="
echo "   Welcome to the My-Hyprland-setup installer"
echo "============================================="
echo "Repository: $REPO_DIR"
echo
echo "WARNING: This script will COPY files into your home directory (~)."
echo "It WILL NOT create backups. Please manually backup any files you care about (for example: ~/.config) before continuing."
echo
if ! ask_yes_no "Have you manually backed up your existing configs and want to continue?"; then
  echo "Aborted. Please backup your files and run this script again." >&2
  exit 1
fi

echo
echo "Starting installation..."

echo "Step 1 — Copying .config to ~/.config"
mkdir -p "$HOME/.config"
# rsync preserves structure and is safe for copying many files
rsync -avh --progress --no-perms "$REPO_DIR/.config/" "$HOME/.config/"

echo
echo "Step 2 — Installing local binaries to ~/.local/bin"
mkdir -p "$HOME/.local/bin"
if [ -d "$REPO_DIR/.local/bin/oh-my-posh" ]; then
  cp -r "$REPO_DIR/.local/bin/oh-my-posh" "$HOME/.local/bin/"
fi

echo
echo "Step 3 — Copying optional theme and wallpaper folders"
if [ -d "$REPO_DIR/.poshthemes" ]; then
  cp -r "$REPO_DIR/.poshthemes" "$HOME/"
fi

if [ -d "$REPO_DIR/.themes" ]; then
  cp -r "$REPO_DIR/.themes" "$HOME/"
  echo "  - .themes copied"
fi

if [ -d "$REPO_DIR/Preview/wallpapers" ]; then
  mkdir -p "$HOME/Pictures/wallpapers"
  cp -r "$REPO_DIR/Preview/wallpapers/"* "$HOME/Pictures/wallpapers/" 2>/dev/null || true
fi

echo
echo "Step 4 — Shell setup"
if command -v fish >/dev/null 2>&1; then
  if ask_yes_no "Fish shell detected. Set Fish as your default shell (runs chsh)?"; then
    if chsh -s "$(command -v fish)"; then
      echo "Default shell changed to Fish"
    else
      echo "chsh failed — you can run: chsh -s $(command -v fish)" >&2
    fi
  else
    echo "Skipping shell change."
  fi
else
  echo "Fish not found in PATH; skipping shell change."
fi

echo
echo "Installation progress: files copied and optional shell change applied."
echo
echo "============================================="
echo "Installation completed — enjoy your new rice!"
echo "   "
echo "Important key binds :"
echo "   "
echo "Super + Enter : Open terminal"
echo "Super + D : Open Rofi (app launcher)"
echo "SUPER + Q : Close focused window"
echo "SUPER + E : Open file manager"
echo "   "
echo "To see all keybinds (nano ~/.config/hypr/modules/key_binds.conf) or check the README.md ."
echo "Check (nano ~/.config/hypr/modules/my_programs.conf) for the default apps ."
echo "============================================="

exit 0
