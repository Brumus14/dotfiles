return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"clangd",
				"marksman",
				"rust_analyzer",
				"lua_ls",
				"taplo",
				"bashls",
				"vimls",
			},
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
	},
}
