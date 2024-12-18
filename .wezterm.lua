-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font 'Meslo LGM Nerd Font Mono'
config.color_scheme = 'mellow'
-- config.window_decorations = 'RESIZE'

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.use_resize_increments = true 

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

-- and finally, return the configuration to wezterm
return config
