return {
	vim.filetype.add({
		extension = { rasi = "rasi" },
		pattern = {
			[".*/waybar/.*"] = "jsonc",
			[".*/waybar/style/.*"] = "css",
			[".*/mako/config"] = "dosini",
			[".*/kitty/*.conf"] = "bash",
			[".*/hypr/.*%.conf"] = "hyprlang",
		},
	}),
}
