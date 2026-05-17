# Reusable Prompt: Recreate My Cyberpunk WezTerm + Powerlevel10k Setup

Read my current terminal configuration and recreate this style safely on another machine.

Objective:
Create a readable cozy-cyberpunk terminal setup using WezTerm, zsh, and Powerlevel10k. The result should feel like a dark neon city terminal: a subtle blurred cyberpunk city background, pastel text, Nerd Font icons, transparent prompt segments, a white app/OS icon, cyan path, green git branch, green prompt arrow, right-side success/error status, command duration, runtime versions, and lavender time.

Requirements:

- First inspect the user's existing shell and terminal configs before editing.
- Detect whether the prompt system is Powerlevel10k, Starship, Oh My Posh, or something else.
- If Powerlevel10k is used, update `~/.p10k.zsh`.
- If WezTerm is used, update `~/.wezterm.lua`.
- Back up every config file before editing, using a timestamped backup filename.
- Do not remove unrelated user customizations.
- Preserve existing shell PATH entries, aliases, plugins, completions, and keybindings.
- Prefer adapting the existing config instead of replacing it wholesale.
- Show a concise diff after editing.
- Run syntax checks where possible.

Desired visual style:

- Dark terminal base near `#050812`.
- Subtle cyberpunk city background image, dimmed enough that text stays readable.
- Slight WezTerm transparency and macOS blur.
- Pastel/cyberpunk palette: cyan, green, pink, lavender, warm yellow.
- Use MesloLGS Nerd Font Mono or another Nerd Font fallback.
- No filled powerline background blocks.
- No filled background behind the prompt arrow `❯`.
- No filled backgrounds behind right-side status/version/time segments.
- No hostname/context segment such as `user@MacBook-Air...`.
- White app/OS icon.
- Cyan current path.
- Green git branch and branch icon.
- Green `✓` on success and pink `✕`/status code on errors.
- Command execution time should always be visible.
- Node version should be green, Python version cyan-blue, and time lavender.

For Powerlevel10k, aim for this layout:

- Left prompt elements:
  - `os_icon`
  - `dir`
  - `vcs`
  - newline
  - `prompt_char`
- Right prompt elements:
  - `status`
  - `command_execution_time`
  - `background_jobs`
  - `direnv`
  - `asdf`
  - `virtualenv`
  - `node_version`
  - `python_version`
  - `go_version`
  - `rust_version`
  - `docker_context`
  - `time`
- Do not include `context`/hostname in the right prompt.

For Powerlevel10k, use transparent prompt separators/backgrounds and these colors:

```zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_MODE=nerdfont-complete
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  dir
  vcs
  newline
  prompt_char
)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  command_execution_time
  background_jobs
  direnv
  asdf
  virtualenv
  node_version
  python_version
  go_version
  rust_version
  docker_context
  time
)

typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=''
typeset -g POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' '
typeset -g POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL=''
typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=''

typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=255
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=
typeset -g POWERLEVEL9K_DIR_FOREGROUND=111
typeset -g POWERLEVEL9K_DIR_BACKGROUND=
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=250
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=153

typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=114
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND=
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=179
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=174
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=
typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=' '
typeset -g POWERLEVEL9K_VCS_VISUAL_IDENTIFIER_COLOR=114

typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_FOREGROUND=114
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_FOREGROUND=204
typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=

typeset -g POWERLEVEL9K_STATUS_OK=true
typeset -g POWERLEVEL9K_STATUS_ERROR=true
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=114
typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND=
typeset -g POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION='✓'
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=218
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=
typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION='✕'
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=218
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_BACKGROUND=

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=221
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=

typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=232
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=
typeset -g POWERLEVEL9K_DIRENV_FOREGROUND=232
typeset -g POWERLEVEL9K_DIRENV_BACKGROUND=
typeset -g POWERLEVEL9K_ASDF_FOREGROUND=232
typeset -g POWERLEVEL9K_ASDF_BACKGROUND=
typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=232
typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND=
typeset -g POWERLEVEL9K_NODE_VERSION_FOREGROUND=114
typeset -g POWERLEVEL9K_NODE_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_PYTHON_VERSION_FOREGROUND=117
typeset -g POWERLEVEL9K_PYTHON_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_GO_VERSION_FOREGROUND=159
typeset -g POWERLEVEL9K_GO_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_RUST_VERSION_FOREGROUND=223
typeset -g POWERLEVEL9K_RUST_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_DOCKER_CONTEXT_FOREGROUND=232
typeset -g POWERLEVEL9K_DOCKER_CONTEXT_BACKGROUND=

typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
typeset -g POWERLEVEL9K_TIME_FOREGROUND=183
typeset -g POWERLEVEL9K_TIME_BACKGROUND=
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=false
typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=true
```

For WezTerm, preserve existing keybindings and user settings, then adapt or add these values:

```lua
config.default_prog = { "/bin/zsh", "-l" }
config.automatically_reload_config = true
config.check_for_updates = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.96
config.window_background_image = os.getenv("HOME") .. "/.config/wezterm/assets/cyberpunk-city.png"
config.window_background_image_hsb = {
  brightness = 0.22,
  hue = 1.0,
  saturation = 1.18,
}
config.macos_window_background_blur = 18
config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 10,
}

config.font = wezterm.font_with_fallback({
  { family = "MesloLGS Nerd Font Mono", weight = "Regular" },
  "Apple Color Emoji",
})
config.font_size = 14.5
config.line_height = 1.12
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }

config.colors = {
  foreground = "#cdd6f4",
  background = "#050812",
  cursor_bg = "#f5e0dc",
  cursor_fg = "#11111b",
  cursor_border = "#f5e0dc",
  selection_fg = "#11111b",
  selection_bg = "#f5e0dc",
  scrollbar_thumb = "#45475a",
  split = "#585b70",
  ansi = {
    "#45475a",
    "#f38ba8",
    "#a6e3a1",
    "#f9e2af",
    "#89b4fa",
    "#f5c2e7",
    "#94e2d5",
    "#bac2de",
  },
  brights = {
    "#585b70",
    "#f38ba8",
    "#a6e3a1",
    "#f9e2af",
    "#89b4fa",
    "#f5c2e7",
    "#94e2d5",
    "#a6adc8",
  },
}
```

If no suitable background image exists, create one safely under:

```text
~/.config/wezterm/assets/cyberpunk-city.png
```

The image should be dark and subtle: a blurred neon city skyline with cyan, pink, purple, and warm yellow accents, with enough empty/dark space on the left for readable prompt text. If you generate it from SVG, keep the SVG beside it as `cyberpunk-city.svg` and render/export the PNG for WezTerm.

After editing:

- Run `zsh -n ~/.p10k.zsh` if Powerlevel10k config was edited.
- Validate any generated SVG if one was created.
- If WezTerm Lua was edited, run a Lua syntax check if available.
- Tell the user to reload with `exec zsh` and open a new WezTerm tab/window or let WezTerm auto-reload.
- Include backup paths and a short diff summary.
