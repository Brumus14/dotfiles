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
require("lspconfig")["html"].setup({})
require("lspconfig")["cssls"].setup({})
require("lspconfig")["ts_ls"].setup({})
require("lspconfig")["r_language_server"].setup({
    cmd = { "R", "--slave", "-e", "languageserver::run()" },
    filetypes = { "r", "rmd" },
})
require("lspconfig")["hyprls"].setup({})
require("lspconfig")["jdtls"].setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})
require("lspconfig")["zls"].setup({})
require("lspconfig")["pyright"].setup({})
require("lspconfig")["gopls"].setup({})
