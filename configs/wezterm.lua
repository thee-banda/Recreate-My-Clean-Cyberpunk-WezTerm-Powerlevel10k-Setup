local wezterm = require("wezterm")

local config = wezterm.config_builder()
local home = wezterm.home_dir

config.default_prog = { "/bin/zsh", "-l" }
config.automatically_reload_config = true
config.check_for_updates = false

-- Window configuration.
config.initial_cols = 120
config.initial_rows = 34
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.96
config.window_background_image = home .. "/.config/wezterm/assets/cyberpunk-city.png"
config.window_background_image_hsb = {
  brightness = 0.22,
  hue = 1.0,
  saturation = 1.18,
}
config.macos_window_background_blur = 18
config.native_macos_fullscreen_mode = true
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 10,
}

-- Font configuration.
config.font_dirs = { home .. "/Library/Fonts" }
config.font = wezterm.font_with_fallback({
  { family = "MesloLGS Nerd Font Mono", weight = "Regular" },
  "Apple Color Emoji",
})
config.font_size = 14.5
config.line_height = 1.12
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }

-- Theme colors.
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
  tab_bar = {
    background = "#0b1020",
    active_tab = {
      bg_color = "#89b4fa",
      fg_color = "#11111b",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#1e1e2e",
      fg_color = "#a6adc8",
    },
    inactive_tab_hover = {
      bg_color = "#313244",
      fg_color = "#cdd6f4",
    },
    new_tab = {
      bg_color = "#11111b",
      fg_color = "#89b4fa",
    },
  },
}

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.tab_max_width = 28

config.keys = {
  { key = "d", mods = "CMD", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "d", mods = "CMD|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "w", mods = "CMD", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
  { key = "LeftArrow", mods = "OPT", action = wezterm.action.SendString("\x1bb") },
  { key = "RightArrow", mods = "OPT", action = wezterm.action.SendString("\x1bf") },
}

return config
