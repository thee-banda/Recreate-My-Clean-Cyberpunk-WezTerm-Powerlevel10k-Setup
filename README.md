# Recreate My Clean Cyberpunk WezTerm + Powerlevel10k Setup

A reusable Codex prompt for recreating a clean, cozy cyberpunk terminal setup with WezTerm, zsh, and Powerlevel10k.

![Clean cyberpunk terminal mockup](assets/mockup.png)

The style:

- Dark translucent WezTerm background
- Pastel cyberpunk colors
- Nerd Font icons
- Transparent Powerlevel10k prompt segments
- White app/OS icon
- Cyan path text
- Green prompt arrow
- Pastel status, version, duration, and time text
- Hidden hostname/context for a cleaner right prompt

## How To Use

Copy the prompt from [PROMPT.md](PROMPT.md), paste it into Codex, and let Codex inspect and update your local terminal config safely.

The prompt asks Codex to:

- Detect the active prompt system
- Prefer Powerlevel10k when present
- Update `~/.p10k.zsh` and `~/.wezterm.lua` when appropriate
- Back up existing config files before editing
- Preserve unrelated shell customizations
- Show diffs after changes
- Run syntax checks

## Recommended Tools

### Homebrew

Most commands below use Homebrew on macOS.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### WezTerm

[WezTerm](https://wezfurlong.org/wezterm/) is the terminal emulator used for the dark translucent window, blur, padding, and font rendering.

```sh
brew install --cask wezterm
```

### zsh

macOS already ships with zsh. If you want the Homebrew version:

```sh
brew install zsh
```

Set zsh as your login shell if needed:

```sh
chsh -s /bin/zsh
```

### Powerlevel10k

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) provides the prompt layout and segments.

```sh
brew install powerlevel10k
```

Then source it from `~/.zshrc`:

```zsh
if [[ -r /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
fi
[[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
```

### Nerd Font

Use a Nerd Font so prompt icons render correctly. This setup uses MesloLGS Nerd Font Mono.

```sh
brew install --cask font-meslo-lg-nerd-font
```

### Optional zsh Helpers

These make the shell feel smoother, but the prompt can work without them.

```sh
brew install zsh-autosuggestions zsh-syntax-highlighting eza zoxide
```

Add helpers to `~/.zshrc`:

```zsh
[[ -r /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -r /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if command -v eza >/dev/null 2>&1; then
  alias ls='eza --icons=auto --group-directories-first'
  alias ll='eza -lah --icons=auto --group-directories-first --git'
  alias la='eza -a --icons=auto --group-directories-first'
  alias tree='eza --tree --icons=auto --group-directories-first'
fi

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
```

## License

MIT. Use it, remix it, ship it, make your terminal feel like home.
