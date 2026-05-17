# Troubleshooting

## Icons Show As Boxes

Install a Nerd Font and configure WezTerm to use it. This theme expects MesloLGS Nerd Font Mono or a similar Nerd Font.

## Prompt Did Not Change

Check that `~/.zshrc` sources Powerlevel10k and `~/.p10k.zsh`, then reload:

```sh
exec zsh
```

## WezTerm Background Is Missing

Make sure this file exists:

```text
~/.config/wezterm/assets/cyberpunk-city.png
```

The installer copies it from `assets/cyberpunk-city.png`.

## Python Or Node Version Is Missing

Runtime versions only show when the language runtime is installed and available in `PATH`. Try:

```sh
node --version
python --version
python3 --version
```

## Config Syntax Check

For Powerlevel10k:

```sh
zsh -n ~/.p10k.zsh
```

For WezTerm, open a new WezTerm window and watch for config reload errors.
