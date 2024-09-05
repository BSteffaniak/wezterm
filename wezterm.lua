-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
config.hide_tab_bar_if_only_one_tab = true
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.font = wezterm.font("FiraCode Nerd Font Mono")

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.keys = {
  { key = "/",     mods = "CTRL",       action = wezterm.action.SendString("\x1f") },
  { key = "Enter", mods = "CTRL",       action = wezterm.action.SendString("\x1b[13;5u") },
  { key = "Enter", mods = "SHIFT",      action = wezterm.action.SendString("\x1b[13;2u") },
  { key = "Tab",   mods = "SHIFT",      action = wezterm.action.SendString("\x1b[9;5u") },
  { key = "Tab",   mods = "SHIFT|CTRL", action = wezterm.action.SendString("\x1b[9;6u") },
}

config.hide_mouse_cursor_when_typing = false

config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
