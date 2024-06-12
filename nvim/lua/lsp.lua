require("lspconfig")["lua_ls"].setup({})
require("lspconfig")["clangd"].setup({
	cmd = { "clangd", "-header-insertion=never" },
})
require("lspconfig")["texlab"].setup({})
require("lspconfig")["rust_analyzer"].setup({})
require("lspconfig")["taplo"].setup({})
