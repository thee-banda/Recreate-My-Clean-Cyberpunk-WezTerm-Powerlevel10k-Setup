#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
timestamp="$(date +%Y%m%d-%H%M%S)"

backup_file() {
  local target="$1"
  if [[ -e "$target" || -L "$target" ]]; then
    local backup="${target}.backup-${timestamp}"
    cp -R "$target" "$backup"
    printf 'Backed up %s -> %s\n' "$target" "$backup"
  fi
}

append_once() {
  local file="$1"
  local marker="$2"
  local content="$3"

  touch "$file"
  if ! grep -Fq "$marker" "$file"; then
    {
      printf '\n# %s\n' "$marker"
      printf '%s\n' "$content"
    } >> "$file"
    printf 'Updated %s\n' "$file"
  else
    printf 'Already configured: %s\n' "$file"
  fi
}

printf 'Installing cyberpunk WezTerm + Powerlevel10k setup...\n'

mkdir -p "$HOME/.config/wezterm/assets"

backup_file "$HOME/.p10k.zsh"
backup_file "$HOME/.wezterm.lua"
backup_file "$HOME/.config/wezterm/wezterm.lua"

cp "$repo_dir/configs/p10k.zsh" "$HOME/.p10k.zsh"
cp "$repo_dir/configs/wezterm.lua" "$HOME/.wezterm.lua"
cp "$repo_dir/assets/cyberpunk-city.png" "$HOME/.config/wezterm/assets/cyberpunk-city.png"
cp "$repo_dir/assets/cyberpunk-city.svg" "$HOME/.config/wezterm/assets/cyberpunk-city.svg"

p10k_source='if [[ -r /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
elif [[ -r /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
fi
[[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"'

append_once "$HOME/.zshrc" "Cyberpunk WezTerm Powerlevel10k theme" "$p10k_source"

zsh -n "$HOME/.p10k.zsh"

printf '\nDone.\n'
printf 'Open a new WezTerm tab/window or run: exec zsh\n'
printf '\nOptional dependencies if missing:\n'
printf '  brew install --cask wezterm font-meslo-lg-nerd-font\n'
printf '  brew install powerlevel10k zsh-autosuggestions zsh-syntax-highlighting eza zoxide\n'
