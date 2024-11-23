-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- and finally, return the configuration to wezterm
config.color_scheme = 'Nightfly (Gogh)'
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.font = wezterm.font 'InconsolataGo Nerd Font Mono'
config.front_end = "WebGpu"

return config

