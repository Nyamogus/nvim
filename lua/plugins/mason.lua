return {
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason").setup({
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
				ensure_installed = {
					"clangd",
					"lua_ls",
					"roslyn",
					"rust_analyzer",
				},
			})
		end,
	},
}
