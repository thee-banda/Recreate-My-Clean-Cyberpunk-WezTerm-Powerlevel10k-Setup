# Reusable Prompt: Recreate My Clean Cyberpunk WezTerm + Powerlevel10k Setup

Read my current terminal configuration and recreate this style safely on another machine.

Objective:
Create a clean, readable, cozy cyberpunk terminal setup using WezTerm, zsh, and Powerlevel10k. The result should have a dark translucent background, pastel colors, Nerd Font icons, and a minimal prompt with no filled powerline backgrounds. It should look close to a clean hacker terminal: white app icon, cyan path, green prompt arrow, transparent segments, and pastel right-side status/version/time text.

Requirements:

- First inspect the user's existing shell and terminal configs before editing.
- Detect whether the prompt system is Powerlevel10k, Starship, Oh My Posh, or something else.
- If Powerlevel10k is used, update `~/.p10k.zsh`.
- If WezTerm is used, update `~/.wezterm.lua`.
- Back up every config file before editing, using a timestamped backup filename.
- Do not remove unrelated user customizations.
- Preserve existing shell PATH entries, aliases, plugins, and completions.
- Show a concise diff after editing.
- Run syntax checks where possible.

Desired visual style:

- Dark terminal background, preferably near `#11111b`.
- Slight transparency and macOS blur if using WezTerm.
- Pastel/cyberpunk palette: cyan, green, pink, lavender, warm yellow.
- Use MesloLGS Nerd Font Mono or another Nerd Font fallback.
- Keep the prompt clean and readable.
- Remove filled background blocks from the left path bar.
- Remove filled background behind the prompt arrow `❯`.
- Remove filled background from the right-side status/version/time segments.
- Hide hostname/context like `user@MacBook-Air...`.
- Make the app/OS icon white.
- Keep Node/version, status/error, command duration, and time visible as colored text only.

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

For Powerlevel10k, use transparent prompt separators/backgrounds:

```zsh
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

typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_FOREGROUND=114
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_FOREGROUND=204
typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=

typeset -g POWERLEVEL9K_STATUS_OK=false
typeset -g POWERLEVEL9K_STATUS_ERROR=true
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=218
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=218
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_BACKGROUND=

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=252
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=

typeset -g POWERLEVEL9K_NODE_VERSION_FOREGROUND=157
typeset -g POWERLEVEL9K_NODE_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_PYTHON_VERSION_FOREGROUND=153
typeset -g POWERLEVEL9K_PYTHON_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_GO_VERSION_FOREGROUND=159
typeset -g POWERLEVEL9K_GO_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_RUST_VERSION_FOREGROUND=223
typeset -g POWERLEVEL9K_RUST_VERSION_BACKGROUND=
typeset -g POWERLEVEL9K_DOCKER_CONTEXT_FOREGROUND=232
typeset -g POWERLEVEL9K_DOCKER_CONTEXT_BACKGROUND=

typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
typeset -g POWERLEVEL9K_TIME_FOREGROUND=225
typeset -g POWERLEVEL9K_TIME_BACKGROUND=
```

For WezTerm, preserve or create these general settings:

- `default_prog = { "/bin/zsh", "-l" }`
- dark background `#11111b`
- foreground `#cdd6f4`
- cursor `#f5e0dc`
- pastel ANSI palette similar to Catppuccin Mocha
- `window_background_opacity` around `0.94`
- `macos_window_background_blur` around `24`
- window padding around 14 left/right and 12 top
- `MesloLGS Nerd Font Mono` with `Apple Color Emoji` fallback
- font size around `14.5`

After editing:

- Run `zsh -n ~/.p10k.zsh` if Powerlevel10k config was edited.
- If WezTerm Lua was edited, run a Lua syntax check if available.
- Tell the user to reload with `exec zsh` or open a new WezTerm tab.
- Include the backup paths and a short diff summary.
