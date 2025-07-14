return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"clangd",
				"lua_ls",
				"rust_analyzer",
			},
		},
		config = function() end,
	},
}
