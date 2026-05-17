# Cyberpunk WezTerm + Powerlevel10k Theme

A cozy cyberpunk terminal setup for WezTerm, zsh, and Powerlevel10k. It uses transparent prompt segments, a dark neon city backdrop, pastel runtime/version labels, and a readable two-line prompt.

![Cyberpunk WezTerm and Powerlevel10k terminal poster](assets/poster.png)

## Preview Image

The poster above is the main share image for the theme.

## Screenshots

Additional preview assets live in [`assets/`](assets/):

- [`assets/poster.png`](assets/poster.png)
- [`assets/mockup.png`](assets/mockup.png)
- [`assets/cyberpunk-city.png`](assets/cyberpunk-city.png)

## Features

The included theme keeps the prompt clean while still showing the useful bits:

- White app/OS icon
- Cyan current path
- Green git branch
- Green prompt arrow
- Green success status and pink error status
- Warm yellow command duration
- `NodeJS` and `PYTHON` runtime labels
- Pastel runtime versions and lavender time
- Hidden hostname/context for less visual noise

## Stack

- [WezTerm](https://wezfurlong.org/wezterm/)
- zsh
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- Nerd Fonts, ideally MesloLGS Nerd Font Mono

## Repo Structure

```text
.
├── assets/              # Preview images and cyberpunk background asset
├── configs/             # Reusable WezTerm and Powerlevel10k configs
├── docs/                # AI setup and troubleshooting docs
├── install.sh           # Backup-first installer
├── PROMPT.md            # AI-assisted setup prompt
├── README.md
└── LICENSE
```

## Quick Start

```bash
git clone https://github.com/thee-banda/Recreate-My-Clean-Cyberpunk-WezTerm-Powerlevel10k-Setup.git
cd Recreate-My-Clean-Cyberpunk-WezTerm-Powerlevel10k-Setup
chmod +x install.sh
./install.sh
exec zsh
```

Open a new WezTerm tab/window after installation so the terminal config reloads.

## Installation Methods

### Method 1: Script Install

The installer copies the checked-in configs and assets into the expected local paths:

- `configs/p10k.zsh` -> `~/.p10k.zsh`
- `configs/wezterm.lua` -> `~/.wezterm.lua`
- `assets/cyberpunk-city.png` -> `~/.config/wezterm/assets/cyberpunk-city.png`

Existing files are backed up with a timestamp before they are replaced.

```bash
chmod +x install.sh
./install.sh
exec zsh
```

### Method 2: AI-Assisted Setup

Use this if you want Codex or Claude Code to inspect your existing setup and adapt the theme safely.

1. Open this repo in your AI coding agent.
2. Paste the contents of [PROMPT.md](PROMPT.md).
3. Ask it to inspect your current terminal files before editing.
4. Confirm it creates backups and shows diffs.

More detail: [docs/AI_SETUP.md](docs/AI_SETUP.md)

### Method 3: Manual Setup

Copy files manually:

```bash
mkdir -p ~/.config/wezterm/assets
cp configs/p10k.zsh ~/.p10k.zsh
cp configs/wezterm.lua ~/.wezterm.lua
cp assets/cyberpunk-city.png ~/.config/wezterm/assets/cyberpunk-city.png
```

Make sure your `~/.zshrc` sources Powerlevel10k and the config:

```zsh
if [[ -r /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
elif [[ -r /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
fi
[[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
```

## Dependencies

Install these if your machine does not already have them:

```bash
brew install --cask wezterm font-meslo-lg-nerd-font
brew install powerlevel10k
```

Optional shell helpers:

```bash
brew install zsh-autosuggestions zsh-syntax-highlighting eza zoxide
```

## Customization

- Prompt colors and segments: edit `~/.p10k.zsh` or `configs/p10k.zsh`.
- WezTerm window, font, and background: edit `~/.wezterm.lua` or `configs/wezterm.lua`.
- Background image: replace `assets/cyberpunk-city.png`, then reinstall or copy it to `~/.config/wezterm/assets/`.
- Runtime labels: edit the `node_version` and `prompt_python_version` settings in `configs/p10k.zsh`.

## Troubleshooting

Common fixes are documented in [docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md).

Quick checks:

```bash
zsh -n ~/.p10k.zsh
node --version
python --version || python3 --version
```

If icons render as boxes, install a Nerd Font and make sure WezTerm is using it.

## License

MIT. Use it, remix it, ship it, make your terminal feel like home.
