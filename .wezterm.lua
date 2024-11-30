local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = 'Nightfly (Gogh)'
config.tab_bar_at_bottom = true
config.color_scheme = "Tokyo Night"
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

config.font_size = 13
config.font = wezterm.font("InconsolataGo Nerd Font Mono")
config.front_end = "WebGpu"

-- try to start maximized
config.initial_cols = 300
config.initial_rows = 70

return config
