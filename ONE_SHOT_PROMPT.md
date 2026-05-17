# One-Shot AI Install Prompt

Copy everything below and paste it into Codex, Claude Code, or another local AI coding agent.

```text
I want you to install this terminal theme on my machine:

https://github.com/thee-banda/Recreate-My-Clean-Cyberpunk-WezTerm-Powerlevel10k-Setup

This is a finished WezTerm + zsh + Powerlevel10k cyberpunk terminal theme. Do not redesign it. Do not invent a new aesthetic.

Your job:

1. Clone the repo if it is not already available locally.
2. Inspect the repo structure before making changes.
3. Inspect my existing terminal setup:
   - ~/.zshrc
   - ~/.p10k.zsh
   - ~/.wezterm.lua
   - ~/.config/wezterm/wezterm.lua
   - ~/.config/wezterm/assets/
4. Detect what I already have installed:
   - WezTerm
   - zsh
   - Powerlevel10k
   - Nerd Font / MesloLGS Nerd Font Mono
   - node, python, go, rust, dotnet, php, java if available
5. Back up every existing config file before changing it.
6. Install the repo theme using the safest method:
   - Prefer ./install.sh if it fits my setup.
   - Otherwise manually copy:
     - configs/p10k.zsh -> ~/.p10k.zsh
     - configs/wezterm.lua -> my active WezTerm config path
     - assets/cyberpunk-city.png -> ~/.config/wezterm/assets/cyberpunk-city.png
     - assets/cyberpunk-city.svg -> ~/.config/wezterm/assets/cyberpunk-city.svg
7. Ensure ~/.zshrc sources Powerlevel10k and ~/.p10k.zsh.
8. Preserve unrelated PATH entries, aliases, completions, plugins, and keybindings.
9. Do not remove my existing custom shell setup unless it conflicts with loading the theme.
10. Validate what you changed:
    - Run zsh -n ~/.p10k.zsh
    - Run bash -n install.sh if you used or edited the installer
    - Check that the WezTerm background asset exists
11. Show me:
    - What files you changed
    - Backup file paths
    - A short diff summary
    - How to reload, usually: exec zsh and open a new WezTerm tab/window

Important style requirements:

- Keep the theme aesthetic exactly as provided by the repo.
- Dark neon cyberpunk city backdrop.
- Transparent Powerlevel10k prompt segments.
- White app/OS icon.
- Cyan current path.
- Green git branch and prompt arrow.
- Green success status and pink error status.
- Warm yellow command duration.
- Node version label should use "NodeJS".
- Python version label should use "PYTHON".
- Hide hostname/context from the prompt.
- Do not replace this with Starship, Oh My Posh, or another theme unless Powerlevel10k is impossible to use.

When finished, do not just say "done". Tell me exactly how to reload and how to verify the result.
```
