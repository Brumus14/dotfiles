require("lazy_setup")
require("settings")

require("lspconfig")["lua_ls"].setup({})
require("lspconfig")["clangd"].setup({
	cmd = { "clangd", "-header-insertion=never" },
})
