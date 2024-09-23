require("lspconfig")["lua_ls"].setup({})
require("lspconfig")["clangd"].setup({
    cmd = { "clangd", "-header-insertion=never" },
})
require("lspconfig")["texlab"].setup({})
require("lspconfig")["rust_analyzer"].setup({})
require("lspconfig")["taplo"].setup({})
require("lspconfig")["glsl_analyzer"].setup({})
require("lspconfig")["asm_lsp"].setup({})
require("lspconfig")["bashls"].setup({})
require("lspconfig")["cmake"].setup({})
require("lspconfig")["marksman"].setup({})
require("lspconfig")["vimls"].setup({})
