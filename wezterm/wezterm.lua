-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Spawn a fish shell in login mode with or without zellij
config.default_prog = { "/usr/local/bin/fish", "-l" }
-- config.default_prog = { "/usr/local/bin/fish", "-l", "-c", "zellij" }

-- set some environment variables
config.set_environment_variables = {
	SHELL = "/usr/local/bin/fish",
	EDITOR = "/usr/local/bin/nvim",
}

-- Application settings
config.check_for_updates = true
config.automatically_reload_config = true

-- Set the color scheme:
config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Catppuccin Frappe"
-- config.color_scheme = "Catppuccin Macchiato"
-- config.color_scheme = "Catppuccin Mocha"

-- Set the font
-- config.font = wezterm.font("MesloLGSDZ Nerd Font Mono")
-- config.font = wezterm.font("CaskaydiaMono Nerd Font Mono")
config.font = wezterm.font("Liga SFMono Nerd Font")
config.font_size = 17

-- Control tabs
-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Set new window size
config.initial_cols = 155
config.initial_rows = 45
config.adjust_window_size_when_changing_font_size = false

-- Set window properties
config.window_decorations = "RESIZE"
--config.window_background_opacity = 0.85
--config.macos_window_background_blur = 8

-- Style inactive panes
config.inactive_pane_hsb = {
	saturation = 0.8,
	brightness = 0.4,
}

local act = wezterm.action

-- 36 is the default, but you can choose a different size.
-- Uses the same font as window_frame.font
-- config.pane_select_font_size=36,

config.keys = {
	-- activate pane selection mode with numeric labels
	{
		key = "9",
		mods = "CTRL",
		action = act.PaneSelect({
			alphabet = "1234567890",
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
