local wezterm = require("wezterm")

return {
	window_padding = {
		left = 0,
		bottom = 0,
		top = 0,
		right = 0,
	},
	window_content_alignment = {
		horizontal = "Center",
		vertical = "Center",
	},

	enable_tab_bar = false,
	color_scheme = "GruvboxDark",
	font = wezterm.font_with_fallback({ "Fira Code", "Symbols Nerd Font" }),
}
