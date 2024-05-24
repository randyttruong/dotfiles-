-- -- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.use_fancy_tab_bar = false
config.font = wezterm.font("Liga SFMono Nerd Font")
config.window_decorations = "TITLE | RESIZE"
config.bold_brightens_ansi_colors = true
config.window_padding = {
	left = 3,
	right = 3,
	top = 1,
	bottom = 1,
}
config.colors = {
	background = "#1E1E1E",
	foreground = "#FFFFFF",
	cursor_bg = "rgba(139,139,139,0)",
	cursor_fg = "rgba(139,139,139,0)",
	selection_bg = "#314F78",
	cursor_border = "rgba(139,139,139,0)",
	ansi = {
		"#000000",
		"#990000",
		"#77EA51",
		"#999900",
		"#6444EE",
		"#B200B2",
		"#69C2CF",
		"#BFBFBF",
	},
	brights = {
		"#666666",
		"#EB5A39",
		"#77EA51",
		"#E5E500",
		"#0000FF",
		"#E500E5",
		"#00E5E5",
		"#FFFFFF",
	},
}

-- and finally, return the configuration to wezterm
return config
